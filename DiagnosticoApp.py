import tkinter as tk
from tkinter import messagebox
import os
from PIL import Image, ImageTk
from pyswip import Prolog

class DiagnosticApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Sistema de Diagnóstico de Pragas e Doenças")

        self.prolog = Prolog()
        self.prolog.consult("diagnostico.pl")

        self.set_initial_window_size()
        self.create_widgets()
        self.sintomas_conhecidos = self.get_known_sintomas()

    # Exibir a imagem
    # Aqui o que foi implementando <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    def exibir_imagem(self, cultura, sintoma):
        imagem_path = os.path.join("img", f"{cultura.lower()}_{sintoma.lower().replace(' ','')}.jpg") # "img" nome da pasta onde ele esta buscando as fotos
        print(f"Tentando abrir imagem em: {imagem_path}")  # debug para eu ver onde ele esta buscando a imagem <<<<<<<<<<<<<<<<<<< para debug para ver como ele esta buscando a imagem
        if os.path.exists(imagem_path):
            try:
                image = Image.open(imagem_path)
                image = image.resize((200, 200), Image.LANCZOS)  
                photo = ImageTk.PhotoImage(image)
                label = tk.Label(self.similar_sintomas_frame, image=photo)
                label.image = photo
                label.pack(pady=5)
            except Exception as e:
                print(f"Erro ao abrir a imagem: {e}")
        else:
            label = tk.Label(self.similar_sintomas_frame, text="Imagem não encontrada")
            label.pack(pady=5)
    # Aqui o que foi implementando <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


    def set_initial_window_size(self):
        self.root.geometry("500x570")

    def create_widgets(self):
        tk.Label(self.root, text="Cultura:").grid(row=0, column=0, padx=10, pady=10, sticky="e")
        self.cultura_entry = tk.Entry(self.root)
        self.cultura_entry.grid(row=0, column=1, padx=10, pady=10, sticky="ew")

        # Sintoma (com campo de entrada e botão)
        tk.Label(self.root, text="Sintoma:").grid(row=1, column=0, padx=10, pady=10, sticky="e")
        self.sintoma_entry = tk.Entry(self.root)
        self.sintoma_entry.grid(row=1, column=1, padx=10, pady=10, sticky="ew")
        self.sintoma_entry.bind("<KeyRelease>", self.atualizar_sintomas)

        tk.Button(self.root, text="Diagnosticar", command=self.diagnosticar).grid(row=2, column=0, columnspan=2, padx=10, pady=10, sticky="ew")

        self.similar_sintomas_frame = tk.Frame(self.root)
        self.similar_sintomas_frame.grid(row=3, column=0, columnspan=2, padx=10, pady=10, sticky="nsew")

    def get_known_sintomas(self):
        sintomas = set()
        for result in self.prolog.query("sintoma(X, Y)"):
            sintomas.add(result["Y"])
        return sintomas

    def diagnosticar(self):
        cultura = self.cultura_entry.get().strip().lower()
        sintoma = self.sintoma_entry.get().strip().lower()

        if not cultura or not sintoma:
            messagebox.showerror("Erro", "Por favor, insira a cultura e o sintoma.")
            return

        resultados = list(self.prolog.query(f"sintoma(X, '{sintoma}'), cultura_afetada('{cultura}', X)"))

        if not resultados:
            similar_sintomas = self.find_similar_sintomas(sintoma)
            self.display_similar_sintomas(similar_sintomas, cultura)
        else:
            self.display_results(resultados, cultura)

    def atualizar_sintomas(self, event):
        cultura = self.cultura_entry.get().strip().lower()
        sintoma_parcial = self.sintoma_entry.get().strip().lower()
        
        if sintoma_parcial:
            possiveis_sintomas = [s for s in self.sintomas_conhecidos if s.startswith(sintoma_parcial)]
            possiveis_sintomas_cultura = []
            for sintoma in possiveis_sintomas:
                if list(self.prolog.query(f"sintoma(X, '{sintoma}'), cultura_afetada('{cultura}', X)")):
                    possiveis_sintomas_cultura.append(sintoma)
            self.display_sintomas(possiveis_sintomas_cultura, cultura)
        else:
            self.clear_similar_sintomas_frame()

    def display_sintomas(self, sintomas, cultura):
        self.clear_similar_sintomas_frame()
        for sintoma in sintomas:
            btn = tk.Button(self.similar_sintomas_frame, text=sintoma, command=lambda sintoma=sintoma, cultura=cultura: self.exibir_doencas_e_pragas(sintoma, cultura))
            btn.pack(pady=5)

    def exibir_doencas_e_pragas(self, sintoma, cultura):
        self.clear_similar_sintomas_frame()

        # Consulta corrigida: primeiro verifica a praga
        pragas_relacionadas = list(self.prolog.query(f"praga(Cultura, X), sintoma(X, '{sintoma}'), Cultura = '{cultura}'"))
        if pragas_relacionadas:
            for praga_relacionada in pragas_relacionadas:
                nome = praga_relacionada["X"]
                self.create_detail_button(nome, "Praga", cultura)
            self.exibir_imagem(cultura, sintoma)
            return

        # Se não encontrou praga relacionada, então verifica doença
        doencas_relacionadas = list(self.prolog.query(f"doenca(Cultura, X), sintoma(X, '{sintoma}'), Cultura = '{cultura}'"))
        if doencas_relacionadas:
            for doenca_relacionada in doencas_relacionadas:
                nome = doenca_relacionada["X"]
                self.create_detail_button(nome, "Doença", cultura)
            self.exibir_imagem(cultura, sintoma)
            return

        # Se nenhum resultado foi encontrado, exibe como desconhecida
        self.create_detail_button("Doença/Praga desconhecida", None, None)

    def clear_similar_sintomas_frame(self):
        for widget in self.similar_sintomas_frame.winfo_children():
            widget.destroy()

    def create_detail_button(self, nome, tipo, cultura):
        btn = tk.Button(self.similar_sintomas_frame, text=nome, command=lambda nome=nome, tipo=tipo, cultura=cultura: self.show_details(nome, tipo, cultura))
        btn.pack(pady=5)

    def show_details(self, nome, tipo=None, cultura=None):
        detalhes = f"Nome: {nome}"
        if tipo:
            detalhes += f"\nTipo: {tipo}"
        if cultura:
            detalhes += f"\nCultura: {cultura}"
        messagebox.showinfo("Detalhes", detalhes)


if __name__ == "__main__":
    root = tk.Tk()
    app = DiagnosticApp(root)
    root.mainloop()
