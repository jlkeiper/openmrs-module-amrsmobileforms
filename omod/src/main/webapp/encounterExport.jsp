<%@ include file="/WEB-INF/template/include.jsp" %>

<openmrs:require privilege="View Encounters" otherwise="/login.htm" redirect="/module/amrsmobileforms/encounterExport.htm"/>

<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="localHeader.jsp"%>

<openmrs:htmlInclude file="/dwr/interface/DWRAMRSMobileFormsService.js"/>

<script>
    $j(document).ready(function(){
        $j("button#export").click(function(event){
            event.preventDefault();
            var encounterId = $j("input[name=encounterId]").val();
            if (!encounterId)
                return;
            DWRAMRSMobileFormsService.renderExportForEncounter(encounterId, function(xml) {
                $j("textarea#xml").val(xml);
            });
        });
    });
</script>

<h2><spring:message code="amrsmobileforms.encounterExport.title"/></h2>

<br />

<form>
    <input type="text" id="encounterId" name="encounterId" placeholder="Encounter ID"/>
    <br />
    <button id="export">Export</button>
    <br />
    <textarea id="xml" name="xml" placeholder="XML will go here ..." cols="80" rows="30"></textarea>
</form>

<%@ include file="/WEB-INF/template/footer.jsp" %>