<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>M�o na roda - Cadastro de ofertas</title>
		<link rel="icon" href="../icone.ico" type="image/x-icon">
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
        
        <link href="../vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet">
        <link href="../vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="../vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">

        <!-- CSS -->
        <link href="css/app_1.min.css" rel="stylesheet">
        <link href="css/app_2.min.css" rel="stylesheet">
        
        <link href="../css/app_1.min.css" rel="stylesheet">
        <link href="../css/app_2.min.css" rel="stylesheet">
<script>
function habilita_campo1(){
	document.getElementById("origem1").disabled = false;
	document.getElementById("destino1").disabled = true;
	document.getElementById("origem2").disabled = true;
	document.getElementById("destino2").disabled = true;
	document.getElementById('origem1').value = "";
	document.getElementById('destino1').value = "Senai Euvaldo Lodi";
	document.getElementById('origem2').value = "";
	document.getElementById('destino2').value = "";
}
function habilita_campo2(){
	document.getElementById("destino1").disabled = false;
	document.getElementById("origem1").disabled = true;
	document.getElementById("origem2").disabled = true;
	document.getElementById("destino2").disabled = true;
	document.getElementById('origem1').value = "Senai Euvaldo Lodi";
	document.getElementById('destino1').value = "";
	document.getElementById('origem2').value = "";
	document.getElementById('destino2').value = "";
}
function habilita_campo3(){
	document.getElementById("origem1").disabled = true;
	document.getElementById("destino1").disabled = false;
	document.getElementById("origem2").disabled = false;
	document.getElementById("destino2").disabled = true;
	document.getElementById('origem1').value = "Senai Euvaldo Lodi";
	document.getElementById('destino2').value = "Senai Euvaldo Lodi";
	document.getElementById('origem2').value = "";
	document.getElementById('destino1').value = "";
}

function validar(){
	if(document.getElementById("titulo").value == ""){
		alert('Por favor, defina um t�tulo');
		document.getElementById("titulo").focus();
		return false
	}else if(document.getElementById("descricao").value == ""){
		alert('Por favor, d� uma descri��o para sua oferta');
		document.getElementById("descricao").focus();
		return false
	}else if(document.form.tipodeviagem[0].checked == false && document.form.tipodeviagem[1].checked == false && document.form.tipodeviagem[2].checked == false){
		alert('Por favor, defina o tipo de viagem');
		document.form.tipodeviagem[0].focus();
		return false
	}else if(document.form.remunerado[0].checked == false && document.form.remunerado[1].checked == false){
		alert('Por favor, defina a op��o de pagamento');
		document.form.remunerado[0].focus();
		return false
	}else if(document.form.tipooferta[0].checked == false && document.form.tipooferta[1].checked == false){
		alert('Por favor, defina o tipo de ve�culo');
		document.form.tipooferta[0].focus();
		return false
	}else if(document.form.tipodeviagem[0].checked == true){
		if(document.getElementById("origem1").value == ""){
			alert('Por favor, defina sua origem');
			document.getElementById("origem1").focus();
			return false
		}
	}else if(document.form.tipodeviagem[1].checked == true){
		if(document.getElementById("destino1").value == ""){
			alert('Por favor, defina seu destino');
			document.getElementById("destino1").focus();
			return false
		}
	}else if(document.form.tipodeviagem[2].checked == true){
		if(document.getElementById("destino1").value == "" && document.getElementById("origem2").value == ""){
			alert('Por favor, defina sua origem e seu destino');
			document.getElementById("destino1").focus();
			return false
		}
	}	 
	
}
</script>
    </head>
    <body>
    <c:if test="${empty sessionScope.usuario}">
    	<meta http-equiv='refresh' content='0, url=/MaoNaRoda/index'>
     </c:if>
        <header id="header" class="clearfix" data-ma-theme="teal">
            <ul class="h-inner">
                <li class="hi-trigger ma-trigger" data-ma-action="sidebar-open" data-ma-target="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>

                <li class="hi-logo hidden-xs">
                    <a href="/MaoNaRoda/index">M�o na roda</a>
                </li>

                <li class="pull-right">
            <ul class="hi-menu">

                <li data-ma-action="search-open">
                    <a href=""><i class="him-icon zmdi zmdi-search"></i></a>
                </li>
                <c:if test="${not empty sessionScope.usuario}">
      		<li class="pull-right">
				<ul class="hi-menu">
						<jsp:include page='gerenciamensagem1.jsp'></jsp:include>
				</ul>
			</li>
			</c:if>
			</ul>
			</li>
                
            </ul>
            <!-- Top Search Content -->
               <div class="h-search-wrap" style='height:85px;'>
                <div class="hsw-inner">
                    <i class="hsw-close zmdi zmdi-arrow-left" data-ma-action="search-close"></i>
                    <form method='get' action='/MaoNaRoda/pesquisa'>
                    <input type="hidden" name='acao' value='pesquisa'>
                    	<input type="text" name='termo'><br>
					  Filtrar por: 
					  <input type='checkbox' name='filtro' value='carros'>Carros
					  <input type='checkbox' name='filtro' value='vans'>Vans
					  <input type='checkbox' name='filtro' value='manha'>Manh�
					  <input type='checkbox' name='filtro' value='tarde'>Tarde
					  <input type='checkbox' name='filtro' value='noite'>Noite
					  <input type='checkbox' name='filtro' value='origem'>Origem
					  <input type='checkbox' name='filtro' value='destino'>Destino
					  <input type='checkbox' name='filtro' value='tipooferta'>Gr�tis
					  <input type="hidden" name='filtro' value=''>
					<select name='ordenacao' id='ordenacao' style='margin-left: 6.5%'>
					  <option name='vazio'>Ordenar por</option>
					  <option name="reputacao" value='reputacao'>Reputa��o</option>
					</select>
                    </form>
                </div>
            </div>
        </header>

        <section id="main">
            <aside id="sidebar" class="sidebar c-overflow">
            <c:if test="${not empty sessionScope.usuario}">
                <div class="s-profile">
                    <a href="" data-ma-action="profile-menu-toggle">
                        <div class="sp-pic">
                            <img src="../${usuario.foto}" alt="">
                        </div>

                        <div class="sp-info">
                            ${usuario.nome}
                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                    </a>

                    <ul class="main-menu">
                        <li class=''>
                            <a href="/MaoNaRoda/gerenciamento/perfil"><i class="zmdi zmdi-account"></i> Meu perfil</a>
                        </li>
                         <li class='active'>
                            <a href="/MaoNaRoda/cadastro/oferta"><i class="zmdi zmdi-car"></i> Cadastro de Oferta</a>
                        </li>
                        <li>
                            <a href="/MaoNaRoda/login?acao=logout"><i class="zmdi zmdi-time-restore"></i> Sair</a>
                        </li>
                    </ul>
                </div>
				</c:if>
				<c:if test="${not empty sessionScope.usuario}">
                <ul class="main-menu">
                    <li class="">
                        <a href="/MaoNaRoda/index"><i class="zmdi zmdi-home"></i> P�gina inicial</a>
                    </li>
                    <li class="">
                        <a href="/MaoNaRoda/perfil/meusfavoritos"><i class="zmdi zmdi-view-list"></i> Meus favoritos</a>
                    </li>        
                    <li class="">
                        <a href="/MaoNaRoda/index/minhasofertas"><i class="zmdi zmdi-chart"></i> Minhas ofertas</a>
                    </li>
                </ul>
                </c:if>
               <c:if test="${empty sessionScope.usuario}">
            <ul class="main-menu">
                    <li class="">
                        <a href="/MaoNaRoda/login"><i class="zmdi zmdi-square-right"></i>Entre j�</a>
                    </li>        
                </ul>
           		</c:if>
            </aside>

			 <section id="main">

           

            <section id="content">
                <div class="container container-alt">
                       <div class="pm-body clearfix">
                            <ul class="tab-nav tn-justified">
                                <li class="active"><a href="">Cadastro de Oferta</a></li>
                            </ul>
                            <form name='form' action='/MaoNaRoda/cadastro' method='post'>
                            <input type='hidden' name='acao' value='cadoferta'>
                            <input type='hidden' name='id' value='${usuario.id}'>
                            <div class="pmb-block">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-format-size"></i> Titulo</h2>
                                </div>
                                 <div class="">
                                    <div class="">
                                       
                                        <div class="">
                                    <textarea placeholder="Titulo" rows="1" cols="80" name='titulo' id='titulo' style="resize:none;"></textarea>
                                </div><br>
                                    </div>
                                </div>
                            <div class="">
                                <div class="pmbb-header">
                                    <h2><i class="zmdi zmdi-view-list-alt"></i> Descri��o</h2>
                                </div>
                                <div class="">
                                    <textarea placeholder="Descri��o" rows="10" name='descricao' id='descricao' cols="80" style="resize:none;"></textarea>
                                </div><br>
                                                                <div class="pmbb-header">
                                <h2><i class="zmdi zmdi-brightness-4"></i> Turno</h2>
                                </div>
							<input type="checkbox" name="manha" value="sim" id='manha'>Manh�
							<input type="checkbox" name="tarde" value="sim" id='tarde'>Tarde
							<input type="checkbox" name="noite" value="sim" id='noite'>Noite<br>
                                <div class="pmbb-header">
                                <h2><i class="zmdi zmdi-swap-vertical"></i> Op��es de Viagem</h2>
                                </div>
						  <input type="radio" name="tipodeviagem" id='ida' value="ida" onclick="javascript:habilita_campo1();"> Ida
						  <input type="radio" name="tipodeviagem" id='volta' value="volta" onclick="javascript:habilita_campo2();"> Volta
						  <input type="radio" name="tipodeviagem" id='idaevolta' value="idavolta" onclick="javascript:habilita_campo3();"> Ida e Volta<br>

									  <div class="pmbb-header">
									  <h2><i class="zmdi zmdi-pin"></i> Origem</h2>
									  </div>
                                        <div class="">
                                    <textarea placeholder="Origem" class='origem1' rows="1" cols="80" id='origem1' name='origem1' style="resize:none;" disabled="disabled"></textarea>
                                </div>
									 <div class="pmbb-header">                               
									<h2><i class="zmdi zmdi-pin"></i> Destino</h2>
									</div>                                  
                                        <div class="">
                                    <textarea placeholder="Destino" class='destino1' rows="1" cols="80" name='destino1' id='destino1' style="resize:none;" disabled></textarea>
                                </div>
							   <div class="pmbb-header">
							  <h2><i class="zmdi zmdi-pin"></i> Origem</h2>
							  </div>
                                        <div class="">
                                    <textarea placeholder="Origem" rows="1" class='origem2' cols="80" name='origem2' id='origem2' style="resize:none;" disabled></textarea>
                                </div>
							 <div class="pmbb-header">                               
							<h2><i class="zmdi zmdi-pin"></i> Destino</h2>
							</div>                                  
                                        <div class="">
                                    <textarea placeholder="Destino" rows="1" cols="80" class='destino2' name='destino2' id='destino2' style="resize:none;" disabled></textarea>
                                </div>
                                <div class="pmbb-header">
                                <h2><i class="zmdi zmdi-money" style="letter-spacing: 4px;"></i>Op��es de Pagamento</h2>
                                </div>
								  <input type="radio" name="remunerado" value="gratis" id='gratis'> Viagem Gratis<br>
								  <input type="radio" name="remunerado" value="paga" id='paga'> Viagem Paga
								<br>
								<div class="pmbb-header">
								<h2><i class="zmdi zmdi-car"></i> Tipo de Veiculo</h2>
								</div>
								  <input type="radio" name="tipooferta" value="van" id='van'> Van<br>
								  <input type="radio" name="tipooferta" value="carro" id='carro'>Carro
								<br>
                               </div>
                                    </div>
                                    <div class="m-t-30">
                                            <input type='submit' class="btn btn-primary btn-sm" onclick="return validar()"></a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        </section>

        <footer id="footer">
            Copyright &copy; 2016 M�o na roda

            <ul class="f-menu">
         <li><a href="/MaoNaRoda/contato/erro">Reporte um erro</a></li>
         <li><a href="/MaoNaRoda/contato">Contato</a></li>
    		</ul>
        </footer>

        <!-- Page Loader -->
        <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Carregando...</p>
            </div>
        </div>
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <script src="vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
        <script src="vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/app.min.js"></script>
        
        <script src="../vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <script src="../vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="../vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="../vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="../vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="../vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

        <script src="../vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="../vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
        <script src="../vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
        <script src="../vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="../vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="../vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
        <script src="../vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="../js/app.min.js"></script>
        
        <script src="js/jquery.mask.min.js"/></script>
        <script src="../js/jquery.mask.min.js"/></script>
        
        <script src="js/jquery-2.1.0.js"/></script>
        <script src="../js/jquery-2.1.0.js"/></script>
    </body>
  </html>
