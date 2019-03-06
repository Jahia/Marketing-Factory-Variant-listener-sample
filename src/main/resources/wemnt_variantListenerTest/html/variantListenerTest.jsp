<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<template:addResources>
    <script type="text/javascript">
        (function() {
            document.addEventListener('displayWemVariant', function (event) {
                document.getElementById("variant_list_${currentNode.identifier}")
                    .appendChild(document.createElement("li"))
                    .appendChild(document.createElement("pre"))
                    .innerHTML = JSON.stringify(event.detail, null, 4);
            }, true);
        })()
    </script>
</template:addResources>

<div class="variant_listener_test">
    <p><fmt:message key="wemnt_variantListenerTest.label"/></p>
    <ul id="variant_list_${currentNode.identifier}">
    </ul>
</div>