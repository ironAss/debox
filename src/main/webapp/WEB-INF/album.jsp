<!--
  #%L
  debox-photos
  %%
  Copyright (C) 2012 Debox
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Affero General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU Affero General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
  #L%
-->
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="includes/header.jsp" />

<div class="page-header">
    <h1>${albumName}</h1>
</div>
<div class="media-grid">
    <c:forEach items="${list}" var="item" varStatus="tagStatus">
        <c:if test="${item.isFile()}">
            <a href="<c:url value="/deploy/album/${albumName}/${item.getName()}" />" id="${item.getName()}"><img src="${url}/${item.getName()}" style="width:160px;" /></a>
        </c:if>
    </c:forEach>
</div>

<c:import url="includes/footer.jsp" />
