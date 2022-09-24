unit UnitRedacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox;

type
  Tfmr_redacoes = class(TForm)
    lyt_pesquisard: TLayout;
    rec_pesquisard: TRectangle;
    rec_btn_buscarRd: TRectangle;
    btn_buscar_redacoes: TButton;
    img_lupa: TImage;
    edt_pesquisar_redacoes: TEdit;
    lb_redacoes: TListBox;
    lyt_titulo_enem: TLayout;
    lbl_enem: TLabel;
    lyt_voltar: TLayout;
    lyt_menu: TLayout;
    img_voltar: TImage;
    procedure AddRedacoesEnem(id_redacao: integer; Tema, Ano: string);
    procedure ListarRedacoes;
    procedure FormShow(Sender: TObject);
    procedure img_voltarClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_redacoes: Tfmr_redacoes;

implementation

{$R *.fmx}

uses   UnitPrincipal, UnitprincipalProf, Unitlogin, frameRedacoesA;

procedure Tfmr_redacoes.AddRedacoesEnem(id_redacao : integer;
                                             Tema, Ano: string);
var
   item: TlistBoxItem;
   frame: TframeRedacoes_A;

begin
  item := TlistBoxItem.Create(lb_redacoes);
  item.Selectable := false;
  item.Text := '';
  item.Height := 243;
  item.Tag := id_redacao;
  lb_redacoes.AddObject(item);

  //frame....
  frame := TFrameRedacoes_A.Create(item);
 // frame.imgFoto.bitimap :=  img_redacaoEnem
  frame.lbl_titulo_redacao.text := tema;
  frame.lbl_ano.text := ano;
  item.AddObject(frame);
end;

procedure Tfmr_redacoes.FormShow(Sender: TObject);
begin
   ListarRedacoes;
end;

procedure Tfmr_redacoes.img_voltarClick(Sender: TObject);
begin
 FrmPrincipal.show;
end;

procedure Tfmr_redacoes.ListarRedacoes;
begin
       //acessar os dados no backend....

     AddRedacoesEnem(0, 'Invisibilidade e registro civil garantia de acesso à cidadania no Brasil', 'Data: 2021');
     AddRedacoesEnem(0, 'O estigma associado às doenças mentais na sociedade brasileira', 'Data: 2020');
     AddRedacoesEnem(0, 'Democratização de acesso ao cinema no Brasil', 'Data: 2019');
     AddRedacoesEnem(0, 'Manipulação do comportamento do usuário pelo controle de dados na internet', 'Data: 2018');
     AddRedacoesEnem(0, 'Desafios para a formação educacional de surdos no Brasil', 'Data: 2017');
     AddRedacoesEnem(0, '2ª aplicação Caminhos para combater o racismo no Brasil', 'Data: 2016');
     AddRedacoesEnem(0, '1ª aplicação Caminhos para combater a intolerância religiosa no Brasil', 'Data: 2016');
     AddRedacoesEnem(0, 'A persistência da violência contra a mulher na sociedade brasileira', 'Data: 2015');
     AddRedacoesEnem(0, 'Publicidade infantil em questão no Brasil', 'Data: 2014');
     AddRedacoesEnem(0, 'Efeitos da implantação da Lei Seca no Brasil', 'Data: 2013');
     AddRedacoesEnem(0, 'Movimento imigratório para o Brasil no século 21', 'Data: 2012');
     AddRedacoesEnem(0, 'Viver em rede no século 21 os limites entre o público e o privado', 'Data: 2011');
     AddRedacoesEnem(0, 'O trabalho na construção da dignidade humana', 'Data: 2010');
     AddRedacoesEnem(0, 'Valorização do idoso', 'Data: 2009');
     AddRedacoesEnem(0, 'Como preservar a floresta Amazônica.', 'Data: 2008');
     AddRedacoesEnem(0, 'O desafio de se conviver com a diferença', 'Data: 2007');
     AddRedacoesEnem(0, 'O poder de transformação da leitura', 'Data: 2006');
     AddRedacoesEnem(0, 'O trabalho infantil na realidade brasileira', 'Data: 2005');
     AddRedacoesEnem(0, 'Como garantir a liberdade de informação e evitar abusos nos meios de comunicação', 'Data: 2004');
     AddRedacoesEnem(0, 'A violência na sociedade brasileira: como mudar as regras desse jogo?', 'Data: 2003');
     AddRedacoesEnem(0, 'O direito de votar: como fazer dessa conquista um meio para promover as transformações sociais que o Brasil necessita?', 'Data: 2002');
     AddRedacoesEnem(0, 'Desenvolvimento e preservação ambiental: como conciliar interesses em conflito?', 'Data: 2001');
end;

end.
