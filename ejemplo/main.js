/**
 * 
 */
var contadorRegistros = 0;


function desplazarseALaTabla(){
	$('html,body').animate({
        scrollTop: $("#cursos-container").offset().top},
        'slow');
}

function capturarCurso() {
	
	
	setCaretToPos($("#nameCourse")[0], 0);

	var cadenaCapturada;
	var nombreCursos;

	nombreCursos = $("#nameCourse").val();

	if (nombreCursos != "") {
		crearContenidoTablaCadenasCapturadas(nombreCursos);
		$("#mensajeError").text("");
		$("#mensajeError").removeClass("campo_incorrecto");
	} else {
		$("#mensajeError").addClass("campo_incorrecto");
		$("#mensajeError").text("Captura al menos un curso");
		
	}
	desplazarseALaTabla();
	$("#nameCourse").val("");

}

function limpiarInput(){
	$("#nameCourse").val("");
}

function crearContenidoTablaCadenasCapturadas(nombreCurso) {

	var stringComponente = "";

	if (contadorRegistros == 0) {
		contadorRegistros = contadorRegistros + 1;
		stringComponente = "<table id='tablaCursosRegistrados' width='100%'  border='1' cellpadding='4' cellspacing='1' bordercolor='#000000' class='bordesTabla'>"
				+ "<tr><td width='5%'><label id='labelContador'><strong>N\u00FAmero de curso</strong></label></td>"
				+ "<td width='95%'><label><strong>Curso de programaci\u00F3n</strong></label></td></tr><tr><td>"
				+ contadorRegistros
				+ "</td>"
				+ "<td>"
				+ nombreCurso
				+ "</td></tr></table>";
		$("#cursos-container").append(stringComponente);
		$("#labelTotalCadenas").text(
				"Total de CURSOS registrados: " + contadorRegistros);
	} else if (contadorRegistros > 0 && contadorRegistros < 100) {
		contadorRegistros = contadorRegistros + 1;
		stringComponente = "<tr><td>" + contadorRegistros + "</td><td>"
				+ nombreCurso + "</td></tr>";
		$("#tablaCursosRegistrados").append(stringComponente);
		$("#labelTotalCadenas").text(
				"Total de CURSOS registrados: " + contadorRegistros);

	}
}


function setSelectionRange(input, selectionStart, selectionEnd) {
	  if (input.setSelectionRange) {
	    input.focus();
	    input.setSelectionRange(selectionStart, selectionEnd);
	  } else if (input.createTextRange) {
	    var range = input.createTextRange();
	    range.collapse(true);
	    range.moveEnd('character', selectionEnd);
	    range.moveStart('character', selectionStart);
	    range.select();
	  }
	}

function setCaretToPos(input, pos) {
	setSelectionRange(input, pos, pos);
}


function mostrarTexto(){
	$("#decripcion-texto").show();
}

function ocultarTexto(){
	$("#decripcion-texto").hide();
}