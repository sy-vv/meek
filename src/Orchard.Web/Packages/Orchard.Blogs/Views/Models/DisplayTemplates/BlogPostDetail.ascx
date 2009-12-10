﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ItemDisplayViewModel<BlogPost>>" %>
<%@ Import Namespace="Orchard.Mvc.Html"%>
<%@ Import Namespace="Orchard.Models.ViewModels"%>
<%@ Import Namespace="Orchard.Blogs.Extensions"%>
<%@ Import Namespace="Orchard.Blogs.Models"%>
<%-- todo: (heskew) needs to be an h1 --%>
<div class="manage"><a href="<%=Url.BlogPostEdit(Model.Item.Slug, Model.Item.Slug) %>" class="ibutton edit">edit</a></div>
<h2><%=Html.Encode(Model.Item.Title)%></h2>
<div class="metadata">
    <% if (Model.Item.Creator != null)
       { 
       %><div class="posted">Posted by <%=Html.Encode(Model.Item.Creator.UserName)%> <%=Html.PublishedWhen(Model.Item)%></div><%
       } %>
</div>
<%=Html.DisplayZonesAny() %>