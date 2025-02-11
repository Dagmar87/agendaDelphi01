object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 425
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 224
    Top = 8
    Width = 45
    Height = 15
    Caption = 'Telefone'
  end
  object Label3: TLabel
    Left = 361
    Top = 8
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 8
    Top = 367
    Width = 35
    Height = 15
    Caption = 'Buscar'
  end
  object Label5: TLabel
    Left = 8
    Top = 80
    Width = 91
    Height = 15
    Caption = 'Lista de Contatos'
  end
  object ListBoxContatos: TListBox
    Left = 8
    Top = 101
    Width = 601
    Height = 260
    ItemHeight = 15
    TabOrder = 0
  end
  object btnAdicionar: TButton
    Left = 361
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object edtNome: TEdit
    Left = 8
    Top = 29
    Width = 217
    Height = 23
    TabOrder = 2
    Text = 'edtNome'
  end
  object btnEditar: TButton
    Left = 450
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnRemover: TButton
    Left = 537
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 4
    OnClick = btnRemoverClick
  end
  object btnBuscar: TButton
    Left = 450
    Top = 387
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = btnBuscarClick
  end
  object edtTelefone: TEdit
    Left = 224
    Top = 29
    Width = 131
    Height = 23
    TabOrder = 6
    Text = 'edtTelefone'
  end
  object edtEmail: TEdit
    Left = 361
    Top = 29
    Width = 248
    Height = 23
    TabOrder = 7
    Text = 'edtEmail'
  end
  object edtBuscar: TEdit
    Left = 8
    Top = 388
    Width = 436
    Height = 23
    TabOrder = 8
    Text = 'edtBuscar'
  end
  object btnAtualizar: TButton
    Left = 537
    Top = 387
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 9
    OnClick = btnAtualizarClick
  end
end
