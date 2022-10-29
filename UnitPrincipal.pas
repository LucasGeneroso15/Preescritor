unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani,
  FMX.Edit, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.Calendar;

type
  TFrmPrincipal = class(TForm)
    rectAbas: TRectangle;
    imgAba1: TImage;
    imgAba2: TImage;
    imgAdd: TImage;
    imgAba3: TImage;
    imgAba4: TImage;
    tabc_instituicao: TTabControl;
    tab_instituicao: TTabItem;
    tab_atribuicoes: TTabItem;
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
    lyt_pesquisa_instituicao: TLayout;
    rec_pesquisa_instituicao: TRectangle;
    rec_buscar_principal: TRectangle;
    btn_buscar_instituicao: TButton;
    img_lupa: TImage;
    edt_pesquisar_instituicoes: TEdit;
    img_modelo: TImage;
    img_instituicao: TImage;
    lv_instituicao: TListView;
    lyt_google_ac: TLayout;
    img_google_ac: TImage;
    lyt_topo: TLayout;
    lbl_passo1: TLabel;
    lbl_passo2: TLabel;
    lbl_passo3: TLabel;
    lbl_confira: TLabel;
    lyt_corpo: TLayout;
    lbl_tipos_ct: TLabel;
    lbl_ct_indireta: TLabel;
    lb_Ct_Indireta1: TLabel;
    lb_Ct_Indiret2: TLabel;
    lb_Ct_Indireta3: TLabel;
    lbl_citacao_direta: TLabel;
    lbl_citacao_diretaEx: TLabel;
    StyleBook1: TStyleBook;
    rec_citacaoI: TRectangle;
    btn_citacaoI: TButton;
    lbl_citacao: TLabel;
    rec_citacaoD: TRectangle;
    btn_citacaoD: TButton;
    lyt_competencias: TLayout;
    rec_competencias: TRectangle;
    lbl_competencias: TLabel;
    lbl_c1: TLabel;
    lbl_c2: TLabel;
    lbl_c5: TLabel;
    lbl_c3: TLabel;
    lbl_c4: TLabel;
    rec_c1: TRectangle;
    rec_c3: TRectangle;
    rec_c2: TRectangle;
    rec_c4: TRectangle;
    rec_c5: TRectangle;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    lbl_notaF: TLabel;
    rec_notaF: TRectangle;
    lbl_obs: TLabel;
    memo_obs: TMemo;
    lyt_atribuicoes: TLayout;
    lyt_ceterComp: TLayout;
    rec_center: TRectangle;
    lbl_titulo: TLabel;
    lyt_bt: TLayout;
    btn_dicas: TButton;
    btn_referencias: TButton;
    rec_dicas: TRectangle;
    Rectangle2: TRectangle;
    rec_atribuicoes: TRectangle;
    rec_calendario: TRectangle;
    calendario: TCalendar;
    lv_atribuicoes: TListView;
    img_atribuicao: TImage;
    rec_atribuidas: TRectangle;
    rec_concluidas: TRectangle;
    btn_atribuidas: TButton;
    btn_concluidas: TButton;
    lyt_titulo: TLayout;
    RectAnimation1: TRectAnimation;
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label1: TLabel;
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
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure imgAddClick(Sender: TObject);
    procedure AnimationBtnFinish(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure imgAba1Click(Sender: TObject);
    procedure lv_instituicaoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_dicasClick(Sender: TObject);
    procedure btn_referenciasClick(Sender: TObject);
    procedure btn_citacaoDClick(Sender: TObject);
    procedure btn_citacaoIClick(Sender: TObject);
    procedure lbl_usuarioClick(Sender: TObject);
    procedure btn_RecSairAlunoClick(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
  private
    procedure OpenMenu(open: Boolean);
    procedure MudarAba(img: TImage);
    procedure AddInstituicaoLv(id_instituicao: integer; instituicao,
      modelo: string);
    procedure listarInstituicao;
    procedure AddAtribuicoeslv(id_atribuicao: integer; atribuicao,
      dataA, dataD: string);
    procedure listaratribuicoes;
  public

  end;

var
  FrmPrincipal: TFrmPrincipal;
  imgl: TlistItemImage;
  txt: TlistItemText;


implementation
{$R *.fmx}

uses UnitRedacoes, frameRedacoesA, Unitlogin, Unitdmbancodados, UnitPerfilAluno,
  UnitFolhaRedacao;

procedure  TFrmPrincipal.AddAtribuicoeslv (id_atribuicao: integer;
                                              atribuicao, dataA, dataD: string);
begin
    with  lv_atribuicoes.items.Add do
    begin
      height := 100;
      imgl := TlistItemImage(objects.FindDrawable('img_atribuicao'));
      imgl.Bitmap :=  img_atribuicao.Bitmap;

      txt := TlistItemText(objects.FindDrawable('txt_atribuicao'));
      txt.text :=  atribuicao;

       txt := TlistItemText(objects.FindDrawable('txt_dataA'));
      txt.text :=  dataA;

       txt := TlistItemText(objects.FindDrawable('txt_dataD'));
      txt.text :=  dataD;
    end;
end;


procedure TFrmPrincipal.lbl_usuarioClick(Sender: TObject);
begin
frmPerfilAluno.show;
end;

procedure TFrmPrincipal.listaratribuicoes;
begin
 AddAtribuicoeslv (1, 'Atribuições','Atribuida: 00/00', 'Concluida: 00/00');

end;


procedure TFrmPrincipal.AddInstituicaoLv(id_instituicao: integer;
                                                 instituicao, modelo: string);
begin
  with lv_instituicao.Items.add do
  begin
    height:= 120;
    imgl := TlistItemImage(objects.FindDrawable('img_instituicao'));
    imgl.Bitmap := img_instituicao.Bitmap;

    imgl := TlistItemImage(objects.FindDrawable('img_modelo'));
    imgl.Bitmap := img_modelo.Bitmap;

    txt := TlistItemText (objects.FindDrawable('txt_instituicao'));
    txt.text := instituicao;

     txt := TlistItemText (objects.FindDrawable('txt_modelo'));
    txt.text := modelo;

  end;
end;
procedure TFrmPrincipal.listarInstituicao;
begin
   AddInstituicaoLv(1, 'Enem', 'Dissertativa-Argumentativa');
   AddInstituicaoLv(1, 'Fatec', 'Dissertativa-Argumentativa');
   AddInstituicaoLv(1, 'Unesp', 'Dissertativa-Argumentativa');
   AddInstituicaoLv(1, 'Unicamp', 'Dissertativa-Argumentativa');
   AddInstituicaoLv(1, 'ITA', 'Dissertativa-Argumentativa');
end;

procedure TFrmPrincipal.lv_instituicaoItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
    if not Assigned(fmr_redacoes) then
 application.CreateForm(Tfmr_redacoes, fmr_redacoes);
  fmr_redacoes.show;
end;


procedure TFrmPrincipal.AnimationBtnFinish(Sender: TObject);
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


procedure TFrmPrincipal.btn_citacaoDClick(Sender: TObject);
begin
ShowMessage ('A citação direta é a transcrição de um trecho completo da obra que está sendo consultada, ou seja, trazer para o seu texto as palavras exatas do autor consultado');
end;

procedure TFrmPrincipal.btn_citacaoIClick(Sender: TObject);
begin
ShowMessage ('Citação indireta, é dizer com suas palavras o que o autor de referência disse. Quando se expressa a ideia com suas próprias palavras, sem alterar ou deturpar, é considerado citação indireta.');
end;

procedure TFrmPrincipal.btn_dicasClick(Sender: TObject);
begin
 ShowMessage('Texto Dissertativo Argumentativo: Baseia-se em um gênero textual onde se defende um ponto de vista, acerca de um determinado assunto, onde há a necessidade de inserir argumentos reais, comembasamento de relevância.');
 ShowMessage ('COESÃO: são elementos que fazem ligações entre palavras e frases, com o objetivo denterligar diferentes partes de um texto (conexão de ideias)');
 ShowMessage ('COERÊNCIA: um texto apresenta coerência quando existem sentido/significado e harmonia na forma de se comunicar. Há lógica entre as ideias, como um todo.');
 ShowMessage ('Desenvolvimento Argumentativo Deve ter embasamento, ser confiável e coerente à realidade, e ao tema, ser afirmado a partir de estudos ou informações previamente adquiridas.');
 ShowMessage ('Palavras Sinônimas apresentam um significado parecido ou igual, para a representação de uma ideia; são significantes diferentes, com o mesmo significado.');
 ShowMessage ('Ortografia (acentuação, uso do hífen, concordância verbal e nominal, regência verbal e nominal, pronomes, pontuação, crase, emprego de letras maiúsculas e minúsculas e separação silábica)');
 ShowMessage ('São regras pertencentes à gramática normativa com a finalidade de abordar a grafia correta das palavras, pertencentes à uma língua.');
 ShowMessage ('Citações/Pensamentos Tem como finalidade fazer referência a alguma coisa, expressando uma ideia ou opinião de um texto, de um determinado autor. Há a necessidade do autor ser identificado')
 end;


procedure TFrmPrincipal.btn_RecSairAlunoClick(Sender: TObject);
begin
      frmPrincipal.Close;
end;

procedure TFrmPrincipal.btn_referenciasClick(Sender: TObject);
begin
ShowMessage ('Dsponível em: <http://portal.mec.gov.br/ultimas-noticias/418-enem946573306/81381-conheca-as-cinco-competencias-cobradas-na-redacao-do-enem>');
ShowMessage ('https://vestibulares.estrategia.com/portal/materias/redacao/competencias-redacaoenem/');
ShowMessage ('https://ead.pucgoias.edu.br/blog/texto-dissertativo-argumentativo-estrutura');
ShowMessage ('https://www.significados.com.br/coesao-e-coerencia/');
Showmessage ('https://redacaonline.com.br/blog/dicas/5-dicas-para-desenvolver-uma-boaargumentacao-nos-seus-textos/');
ShowMessage ('https://www.portugues.com.br/gramatica/ortografia.html');
end;
procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  listarInstituicao;
  listaratribuicoes;
end;


procedure TFrmPrincipal.imgAba1Click(Sender: TObject);
begin
  MudarAba(Timage(sender));
end;

procedure TFrmPrincipal.imgAddClick(Sender: TObject);
begin
openMenu(true);
end;

procedure TFrmPrincipal.imgFecharClick(Sender: TObject);
begin
animationbtn.inverse := true;
animationbtn.start;
openmenu(false);
rectMenu.visible := false;
end;

procedure TFrmPrincipal.MudarAba(img: TImage);
begin
    imgAba1.Opacity := 0.4;
    imgAba2.Opacity := 0.4;
    imgAba3.Opacity := 0.4;
    imgAba4.Opacity := 0.4;

    img.Opacity := 1;
    tabc_instituicao.GotoVisibleTab(img.Tag);
end;

procedure TFrmPrincipal.OpenMenu(open: Boolean);
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

procedure TFrmPrincipal.Rectangle8Click(Sender: TObject);
begin
     frmPerfilALuno.show;
end;

end.

end;


procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
    MudarAba(imgAba1);
end;

procedure TFrmPrincipal.imgAba1Click(Sender: TObject);
begin
    MudarAba(TImage(Sender));
end;

procedure TFrmPrincipal.imgAddClick(Sender: TObject);
begin
    OpenMenu(true);
end;

procedure TFrmPrincipal.imgFecharClick(Sender: TObject);
begin
    OpenMenu(false);
end;

end.
