<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="pageContent">
	<form method="post" action="TypeOfWork/<c:choose><c:when test="${obj==null}">add</c:when><c:otherwise>update</c:otherwise></c:choose>" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<input type="hidden" name="id" value="${obj.id}">
			<p>
				<label>工种：</label>
				<input name="name" type="text" size="30" value="${obj.name}" class="required" maxlength="150"/>
			</p>
			<p>
				<label>计时单位：</label>
				<input name="timingUnit" type="text" size="30" value="${obj.timingUnit}" class="required" maxlength="10"/>
			</p>
			<p>
				<label>计时单价：</label>
				<input name="price" type="text" size="30" value="${obj.price}" class="number" class="required"/>
			</p>
		
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
