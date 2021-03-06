object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 354
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelClientes: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Alunos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object STGridPessoa: TStringGrid
    Left = 8
    Top = 264
    Width = 833
    Height = 82
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
    Visible = False
  end
  object BitBtnExportarAlunosXLS: TBitBtn
    Left = 8
    Top = 233
    Width = 120
    Height = 25
    Caption = 'Exportar para XLS'
    TabOrder = 1
    OnClick = BitBtnExportarAlunosXLSClick
  end
  object BitBtnExportarAlunosHTML: TBitBtn
    Left = 134
    Top = 233
    Width = 120
    Height = 25
    Caption = 'Exportar para HTML'
    TabOrder = 2
    OnClick = BitBtnExportarAlunosHTMLClick
  end
  object DBGridClientes: TDBGrid
    Left = 8
    Top = 27
    Width = 832
    Height = 200
    DataSource = DataSourceClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sobrenome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Matricula'
        Visible = True
      end>
  end
  object ClientDataSetClientes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sobrenome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Matricula'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'Id'
    Params = <>
    StoreDefs = True
    Left = 92
    Top = 166
    object ClientDataSetClientesId: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSetClientesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSetClientesSobrenome: TStringField
      FieldName = 'Sobrenome'
      Size = 50
    end
    object ClientDataSetClientesMatricula: TStringField
      FieldName = 'Matricula'
    end
  end
  object DataSourceClientes: TDataSource
    DataSet = ClientDataSetClientes
    Left = 204
    Top = 166
  end
end
