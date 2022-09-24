unit UnitAtribuicoesp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TatribuicaoProf = class(TForm)
    lyt_atribuicoes: TLayout;
    lbl_atribuicao: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  atribuicaoProf: TatribuicaoProf;

implementation

{$R *.fmx}

end.
