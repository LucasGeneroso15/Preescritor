program Project1login;

uses
  System.StartUpCopy,
  FMX.Forms,
  frameRedacoesA in 'frames\frameRedacoesA.pas' {frameRedacoes_A: TFrame},
  Unit2Cadastro in 'Unit2Cadastro.pas' {frmcadastrese},
  Unitlogin in 'Unitlogin.pas' {frmlogin},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitPrincipalProf in 'UnitPrincipalProf.pas' {FrmPrincipalProf},
  UnitRedacoes in 'UnitRedacoes.pas' {fmr_redacoes},
  UnitEnviarRedacoes in 'UnitEnviarRedacoes.pas' {frmEnviarRedacoes},
  UnitAtribuicoesp in 'UnitAtribuicoesp.pas' {atribuicaoProf},
  Unitdmbancodados in 'Unitdmbancodados.pas' {dmbancodados: TDataModule},
  Unitfrmadmin in 'Unitfrmadmin.pas' {frmadmin},
  Unitfrmsalas in 'Unitfrmsalas.pas' {frmsalas},
  UnitCadastroRedacoes in 'UnitCadastroRedacoes.pas' {FrmCadastroRedacao},
  UnitCadastroProfessor in 'UnitCadastroProfessor.pas' {fmr_cadastroProfessor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(TFrmPrincipalProf, FrmPrincipalProf);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipalProf, FrmPrincipalProf);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tfrmcadastrese, frmcadastrese);
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipalProf, FrmPrincipalProf);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPrincipalProf, FrmPrincipalProf);
  Application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  Application.CreateForm(TfrmEnviarRedacoes, frmEnviarRedacoes);
  Application.CreateForm(TatribuicaoProf, atribuicaoProf);
  Application.CreateForm(Tdmbancodados, dmbancodados);
  Application.CreateForm(Tfrmadmin, frmadmin);
  Application.CreateForm(Tfrmsalas, frmsalas);
  Application.CreateForm(TFrmCadastroRedacao, FrmCadastroRedacao);
  Application.CreateForm(Tfmr_cadastroProfessor, fmr_cadastroProfessor);
  Application.Run;
end.
