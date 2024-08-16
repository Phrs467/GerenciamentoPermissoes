unit UDBConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDBConexao = class(TDataModule)
    ConexaoBDPEDRO: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    function bconectar(): Boolean;
  end;

var
  DBConexao: TDBConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDBConexao }

function TDBConexao.bconectar: Boolean;
begin
  try
    ConexaoBDPEDRO.Connected := True;
    if ConexaoBDPEDRO.Connected = true then
      Result := True;
  except
    Result := False
  end;
end;

end.
