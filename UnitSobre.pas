unit UnitSobre;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.ExtCtrls, FMX.Controls.Presentation;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    lblFolha: TLabel;
    lblversao: TLabel;
    lblAutores: TLabel;
    lblEmail: TLabel;
    Button1: TButton;
    ImageControl1: TImageControl;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.fmx}

procedure TfrmSobre.Button1Click(Sender: TObject);
begin
    close;
end;

end.
