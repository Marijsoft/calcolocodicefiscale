// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://webservices.dotnethell.it/codicefiscale.asmx?WSDL
//  >Import : http://webservices.dotnethell.it/codicefiscale.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (12/02/2018 16:36:57 - - $Rev: 90173 $)
// ************************************************************************ //

unit codicefiscale;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]


  string_         =  type string;      { "http://webservices.dotnethell.it/CodiceFiscale"[GblElm] }

  // ************************************************************************ //
  // Namespace : http://webservices.dotnethell.it/CodiceFiscale
  // soapAction: http://webservices.dotnethell.it/CodiceFiscale/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CodiceFiscaleSoap
  // service   : CodiceFiscale
  // port      : CodiceFiscaleSoap
  // URL       : http://webservices.dotnethell.it/codicefiscale.asmx
  // ************************************************************************ //
  CodiceFiscaleSoap = interface(IInvokable)
  ['{B74A5067-925C-E90A-E0DE-3E988643AC7A}']
    function  CalcolaCodiceFiscale(const Nome: string; const Cognome: string; const ComuneNascita: string; const DataNascita: string; const Sesso: string): string; stdcall;
    function  CodiceComune(const NomeComune: string): string; stdcall;
    function  NomeComune(const CodiceComune: string): string; stdcall;
    function  ControllaCodiceFiscale(const CodiceFiscale: string): string; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://webservices.dotnethell.it/CodiceFiscale
  // style     : ????
  // use       : ????
  // binding   : CodiceFiscaleHttpGet
  // service   : CodiceFiscale
  // port      : CodiceFiscaleHttpGet
  // ************************************************************************ //
  CodiceFiscaleHttpGet = interface(IInvokable)
  ['{832A6EA3-7629-76E5-2AAE-B6BA62939B67}']
    function  CalcolaCodiceFiscale(const Nome: string; const Cognome: string; const ComuneNascita: string; const DataNascita: string; const Sesso: string): string_; stdcall;
    function  CodiceComune(const NomeComune: string): string_; stdcall;
    function  NomeComune(const CodiceComune: string): string_; stdcall;
    function  ControllaCodiceFiscale(const CodiceFiscale: string): string_; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://webservices.dotnethell.it/CodiceFiscale
  // style     : ????
  // use       : ????
  // binding   : CodiceFiscaleHttpPost
  // service   : CodiceFiscale
  // port      : CodiceFiscaleHttpPost
  // ************************************************************************ //
  CodiceFiscaleHttpPost = interface(IInvokable)
  ['{2D128ECE-FD90-ABF2-1B7A-BD829CB89D68}']
    function  CalcolaCodiceFiscale(const Nome: string; const Cognome: string; const ComuneNascita: string; const DataNascita: string; const Sesso: string): string_; stdcall;
    function  CodiceComune(const NomeComune: string): string_; stdcall;
    function  NomeComune(const CodiceComune: string): string_; stdcall;
    function  ControllaCodiceFiscale(const CodiceFiscale: string): string_; stdcall;
  end;

function GetCodiceFiscaleSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CodiceFiscaleSoap;
function GetCodiceFiscaleHttpGet(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CodiceFiscaleHttpGet;
function GetCodiceFiscaleHttpPost(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CodiceFiscaleHttpPost;


implementation
  uses System.SysUtils;

function GetCodiceFiscaleSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CodiceFiscaleSoap;
const
  defWSDL = 'http://webservices.dotnethell.it/codicefiscale.asmx?WSDL';
  defURL  = 'http://webservices.dotnethell.it/codicefiscale.asmx';
  defSvc  = 'CodiceFiscale';
  defPrt  = 'CodiceFiscaleSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CodiceFiscaleSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetCodiceFiscaleHttpGet(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CodiceFiscaleHttpGet;
const
  defWSDL = 'http://webservices.dotnethell.it/codicefiscale.asmx?WSDL';
  defURL  = '';
  defSvc  = 'CodiceFiscale';
  defPrt  = 'CodiceFiscaleHttpGet';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CodiceFiscaleHttpGet);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetCodiceFiscaleHttpPost(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CodiceFiscaleHttpPost;
const
  defWSDL = 'http://webservices.dotnethell.it/codicefiscale.asmx?WSDL';
  defURL  = '';
  defSvc  = 'CodiceFiscale';
  defPrt  = 'CodiceFiscaleHttpPost';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CodiceFiscaleHttpPost);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { CodiceFiscaleSoap }
  InvRegistry.RegisterInterface(TypeInfo(CodiceFiscaleSoap), 'http://webservices.dotnethell.it/CodiceFiscale', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CodiceFiscaleSoap), 'http://webservices.dotnethell.it/CodiceFiscale/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CodiceFiscaleSoap), ioDocument);
  { CodiceFiscaleSoap.CalcolaCodiceFiscale }
  InvRegistry.RegisterMethodInfo(TypeInfo(CodiceFiscaleSoap), 'CalcolaCodiceFiscale', '',
                                 '[ReturnName="CalcolaCodiceFiscaleResult"]', IS_OPTN);
  { CodiceFiscaleSoap.CodiceComune }
  InvRegistry.RegisterMethodInfo(TypeInfo(CodiceFiscaleSoap), 'CodiceComune', '',
                                 '[ReturnName="CodiceComuneResult"]', IS_OPTN);
  { CodiceFiscaleSoap.NomeComune }
  InvRegistry.RegisterMethodInfo(TypeInfo(CodiceFiscaleSoap), 'NomeComune', '',
                                 '[ReturnName="NomeComuneResult"]', IS_OPTN);
  { CodiceFiscaleSoap.ControllaCodiceFiscale }
  InvRegistry.RegisterMethodInfo(TypeInfo(CodiceFiscaleSoap), 'ControllaCodiceFiscale', '',
                                 '[ReturnName="ControllaCodiceFiscaleResult"]', IS_OPTN);
  { CodiceFiscaleHttpGet }
  InvRegistry.RegisterInterface(TypeInfo(CodiceFiscaleHttpGet), 'http://webservices.dotnethell.it/CodiceFiscale', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CodiceFiscaleHttpGet), '');
  { CodiceFiscaleHttpPost }
  InvRegistry.RegisterInterface(TypeInfo(CodiceFiscaleHttpPost), 'http://webservices.dotnethell.it/CodiceFiscale', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CodiceFiscaleHttpPost), '');
  RemClassRegistry.RegisterXSInfo(TypeInfo(string_), 'http://webservices.dotnethell.it/CodiceFiscale', 'string_', 'string');

end.