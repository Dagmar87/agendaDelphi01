unit AgendaDeContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TContato = record
    Nome: string;
    Telefone: string;
    Email: string;
  end;

  TForm1 = class(TForm)
    ListBoxContatos: TListBox;
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
    ListaContatos: TList<TContato>;
    procedure AdicionarContato;
    procedure AtualizarListaContatos;
    procedure EditarContato;
    procedure RemoverContato;
    procedure BuscarContato;
    procedure SalvarContatos;
    procedure CarregarContatos;
    procedure LimparCampos;
    procedure LimparBusca;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdicionarContato;
var
  Contato: TContato;
begin
  Contato.Nome := edtNome.Text;
  Contato.Telefone := edtTelefone.Text;
  Contato.Email := edtEmail.Text;
  ListaContatos.Add(Contato);
  SalvarContatos;
  AtualizarListaContatos;  
end;

procedure TForm1.AtualizarListaContatos;
var 
  Contato: TContato;
begin
  ListBoxContatos.Items.Clear;
  for Contato in ListaContatos do
    ListBoxContatos.Items.Add(Contato.Nome + ' - ' + Contato.Telefone + ' - ' + Contato.Email);
end;

procedure TForm1.EditarContato;
var 
  Contato: TContato;
  Index: Integer;
begin
  Index := ListBoxContatos.ItemIndex;
  if Index <> -1 then
  begin
    Contato := ListaContatos[Index];
    Contato.Nome := edtNome.Text;
    Contato.Telefone := edtTelefone.Text;
    Contato.Email := edtEmail.Text;
    ListaContatos[Index] := Contato;
    SalvarContatos;
    AtualizarListaContatos;
  end;
end;

procedure TForm1.RemoverContato;
var
  Index: Integer;
  Nome, Telefone, Email: String;
begin
  if ListBoxContatos.Count <> ListaContatos.Count then
  begin
    ShowMessage('Atualize a lista antes de remover.');
    Exit;
  end;
  Index := ListBoxContatos.ItemIndex;
  if Index <> -1 then
  begin
    ListaContatos.Delete(Index);
    SalvarContatos;
    AtualizarListaContatos;
  end;
end;

procedure TForm1.BuscarContato;
var
  Contato: TContato;
  NomeBusca: string;
begin
  NomeBusca := edtBuscar.Text;
  ListBoxContatos.Items.Clear;
  for Contato in ListaContatos do
    if Pos(LowerCase(NomeBusca), LowerCase(Contato.Nome)) > 0 then
      ListBoxContatos.Items.Add(Contato.Nome + ' - ' + Contato.Telefone + ' - ' + Contato.Email)
end;

procedure TForm1.SalvarContatos;
var
 Contato: TContato;
 ContatoFile: TextFile;
 FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'Contatos.txt';
  AssignFile(ContatoFile, FileName);
  Rewrite(ContatoFile);
  for Contato in ListaContatos do
    Writeln(ContatoFile, Contato.Nome + '|' + Contato.Telefone + '|' + Contato.Email);
  CloseFile(ContatoFile);
end;

procedure TForm1.CarregarContatos;

begin

end;

procedure TForm1.LimparBusca;
begin

end;

procedure TForm1.LimparCampos;
begin

end;

end.
