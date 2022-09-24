unit UnitPrincipalProf;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani,
  FMX.Edit, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.Calendar, FMX.DateTimeCtrls;

type
  TFrmPrincipalProf = class(TForm)
    rectAbas: TRectangle;
    imgAba1: TImage;
    imgAba2: TImage;
    imgAdd: TImage;
    imgAba3: TImage;
    imgAba4: TImage;
    tabc_instituicao: TTabControl;
    tab_instituicao: TTabItem;
    tab_atribuicoesP: TTabItem;
    tab_chat: TTabItem;
    tab_google_acd: TTabItem;
    rectMenu: TRectangle;
    lytMenu: TLayout;
    imgFechar: TImage;
    lbl_minhas_redacoes: TLabel;
    lbl_meu_progresso: TLabel;
    lbl_usuario: TLabel;
    lbl_sair: TLabel;
    AnimationBtn: TFloatAnimation;
    Label7: TLabel;
    StyleBook1: TStyleBook;
    lyt_competenciasP: TLayout;
    rec_competenciasP: TRectangle;
    lbl_competenciasP: TLabel;
    lbl_c1P: TLabel;
    lbl_c2P: TLabel;
    lbl_c5P: TLabel;
    lbl_c3P: TLabel;
    lbl_c4P: TLabel;
    rec_c1P: TRectangle;
    rec_c3: TRectangle;
    rec_c2: TRectangle;
    rec_c4: TRectangle;
    rec_c5: TRectangle;
    edt_c1P: TEdit;
    edt_c2P: TEdit;
    edt_c3P: TEdit;
    edt_c5P: TEdit;
    edt_c4P: TEdit;
    edt_notaF_P: TEdit;
    lbl_notaF_P: TLabel;
    rec_notaF: TRectangle;
    lbl_obsP: TLabel;
    memo_obsP: TMemo;
    lyt_atribuicoesP: TLayout;
    lyt_centerP: TLayout;
    rec_center: TRectangle;
    lbl_titulo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lyt_bt: TLayout;
    btn_dicas: TButton;
    btn_referencias: TButton;
    rec_dicas: TRectangle;
    Rectangle2: TRectangle;
    rec_atribuicoes: TRectangle;
    rec_calendario: TRectangle;
    calendario: TCalendar;
    img_atribuicao: TImage;
    rec_atribuidas: TRectangle;
    btn_Salas: TButton;
    rec_enviarNota: TRectangle;
    rec_calcularNota: TRectangle;
    rec_limparNota: TRectangle;
    img_calcular: TImage;
    btn_enviarNota: TButton;
    btn_limparNota: TButton;
    recCenter: TRectangle;
    recTop: TRectangle;
    lblTitulo: TLabel;
    Edit_TemaRedacao: TEdit;
    rec_buscar_principal: TRectangle;
    btn_buscar_instituicao: TButton;
    imgAtencao: TImage;
    lblEsc_atencao: TLabel;
    Tmemo_obsProfessor: TMemo;
    lblObs: TLabel;
    DateEdit_Conclusao: TDateEdit;
    DateEdit_Atribuicao: TDateEdit;
    lbl_dataAtribuicao: TLabel;
    lbl_dataConclusao: TLabel;
    rec_anexar: TRectangle;
    btn_anexarRD: TButton;
    rec_limpar: TRectangle;
    btn_limparRD: TButton;
    procedure imgAddClick(Sender: TObject);
    procedure AnimationBtnFinish(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure imgAba1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure OpenMenu(open: Boolean);
    procedure MudarAba(img: TImage);
  public

  end;

var
  FrmPrincipalProf: TFrmPrincipalProf;
  imgl: TlistItemImage;
  txt: TlistItemText;


implementation
{$R *.fmx}

uses UnitRedacoes, frameRedacoesA, Unitlogin;




procedure TFrmPrincipalProf.AnimationBtnFinish(Sender: TObject);
begin

            if NOT AnimationBtn.Inverse then // Abrindo o menu...
    begin
        TAnimator.AnimateFloat(lbl_minhas_redacoes, 'Opacity', 1, 0.1,
                               TAnimationType.In, TInterpolationType.Circular);
        TAnimator.AnimateFloat(lbl_meu_progresso, 'Opacity', 1, 0.4,
                               TAnimationType.In, TInterpolationType.Circular);
        TAnimator.AnimateFloat(lbl_usuario, 'Opacity', 1, 0.7,
                               TAnimationType.In, TInterpolationType.Circular);
        TAnimator.AnimateFloat(lbl_sair, 'Opacity', 1, 1.0,
                               TAnimationType.In, TInterpolationType.Circular);
    end
    else
        TAnimator.AnimateFloat(rectMenu, 'Opacity', 0, 0.2);

    end;


procedure TFrmPrincipalProf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmlogin.visible := true
end;


procedure TFrmPrincipalProf.imgAba1Click(Sender: TObject);
begin
  MudarAba(Timage(sender));
end;

procedure TFrmPrincipalProf.imgAddClick(Sender: TObject);
begin
openMenu(true);
end;

procedure TFrmPrincipalProf.imgFecharClick(Sender: TObject);
begin
animationbtn.inverse := true;
animationbtn.start;
openmenu(false);
rectMenu.visible := false;
end;

procedure TFrmPrincipalProf.MudarAba(img: TImage);
begin
    imgAba1.Opacity := 0.4;
    imgAba2.Opacity := 0.4;
    imgAba3.Opacity := 0.4;
    imgAba4.Opacity := 0.4;

    img.Opacity := 1;
    tabc_instituicao.GotoVisibleTab(img.Tag);
end;

procedure TFrmPrincipalProf.OpenMenu(open: Boolean);
begin
  if NOT open then  // Fechando...
          AnimationBtn.Inverse := true
  else
  begin
        AnimationBtn.Inverse := false;
        lbl_minhas_redacoes.Opacity := 0;
        lbl_meu_progresso.Opacity := 0;
        lbl_usuario.Opacity := 0;
        Lbl_sair.Opacity := 0;

        rectMenu.Opacity := 0;
        rectMenu.Visible := true;
        TAnimator.AnimateFloat(rectMenu, 'Opacity', 1, 0.2);
    end;

    AnimationBtn.Start;
end;

end.

end;


procedure TFrmPrincipalProf.FormShow(Sender: TObject);
begin
    MudarAba(imgAba1);
end;

procedure TFrmPrincipalProf.imgAba1Click(Sender: TObject);
begin
    MudarAba(TImage(Sender));
end;

procedure TFrmPrincipalProf.imgAddClick(Sender: TObject);
begin
    OpenMenu(true);
end;

procedure TFrmPrincipalProf.imgFecharClick(Sender: TObject);
begin
    OpenMenu(false);
end;

end.
