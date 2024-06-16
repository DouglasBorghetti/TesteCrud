object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Produtos'
  ClientHeight = 612
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 880
    Height = 241
    Align = alTop
    TabOrder = 0
    object lbCodigo: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = edCodigo
    end
    object lbProduto: TLabel
      Left = 16
      Top = 66
      Width = 43
      Height = 15
      Caption = 'Produto'
      FocusControl = edProduto
    end
    object lbValor: TLabel
      Left = 16
      Top = 116
      Width = 26
      Height = 15
      Caption = 'Valor'
      FocusControl = edValor
    end
    object lbQtd: TLabel
      Left = 136
      Top = 116
      Width = 62
      Height = 15
      Caption = 'Quantidade'
      FocusControl = edQtd
    end
    object edCodigo: TDBEdit
      Left = 16
      Top = 37
      Width = 89
      Height = 23
      DataField = 'id'
      DataSource = dsProdutos
      TabOrder = 0
    end
    object edProduto: TDBEdit
      Left = 16
      Top = 87
      Width = 632
      Height = 23
      DataField = 'name'
      DataSource = dsProdutos
      ReadOnly = True
      TabOrder = 1
    end
    object edValor: TDBEdit
      Left = 16
      Top = 137
      Width = 89
      Height = 23
      DataField = 'price'
      DataSource = dsProdutos
      ReadOnly = True
      TabOrder = 2
    end
    object edQtd: TDBEdit
      Left = 136
      Top = 137
      Width = 65
      Height = 23
      DataField = 'qtd'
      DataSource = dsProdutos
      ReadOnly = True
      TabOrder = 3
    end
    object btnNovo: TButton
      Left = 720
      Top = 44
      Width = 105
      Height = 52
      Caption = 'Novo'
      TabOrder = 4
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 720
      Top = 102
      Width = 105
      Height = 52
      Caption = 'Editar'
      TabOrder = 5
      OnClick = btnEditClick
    end
    object btnDelete: TButton
      Left = 720
      Top = 160
      Width = 105
      Height = 52
      Caption = 'Deletar'
      TabOrder = 6
      OnClick = btnDeleteClick
    end
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 241
    Width = 880
    Height = 311
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 878
      Height = 309
      Align = alClient
      DataSource = dsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 552
    Width = 880
    Height = 60
    Align = alBottom
    TabOrder = 2
    object btnSalvar: TButton
      AlignWithMargins = True
      Left = 660
      Top = 4
      Width = 105
      Height = 52
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 771
      Top = 4
      Width = 105
      Height = 52
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object cnnProduto: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Douglas;Data Source=(local' +
      ');Initial File Name="";Server SPN="";Authentication="";Access To' +
      'ken=""'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 816
    Top = 16
  end
  object tbProdutos: TADOTable
    Active = True
    Connection = cnnProduto
    CursorType = ctStatic
    TableName = 'Produtos'
    Left = 816
    Top = 88
    object tbProdutosid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object tbProdutosname: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 77
      FieldName = 'name'
      Size = 100
    end
    object tbProdutosprice: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 20
      FieldName = 'price'
      Precision = 19
    end
    object tbProdutosqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'qtd'
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 816
    Top = 152
  end
end
