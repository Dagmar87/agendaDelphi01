unit AgendaDeContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    btnAdicionar: TButton;
    edtNome: TEdit;
    Label1: TLabel;
    btnEditar: TButton;
    btnRemover: TButton;
    btnBuscar: TButton;
    edtTelefone: TEdit;
    Label2: TLabel;
    edtEmail: TEdit;
    Label3: TLabel;
    edtBuscar: TEdit;
    Label4: TLabel;
    btnAtualizar: TButton;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
