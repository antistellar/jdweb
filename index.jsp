<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="jd.JDBean" %>
<%@ page import="jd.SkillStoneData" %>
<%@ page import="jd.SkillNameNumber" %>
<%@ page import="jd.Formula" %>
<jsp:useBean id="bean" class="jd.JDBean" scope="session"/>
<jsp:setProperty name="bean" property="requestedStone"/>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Jeanne d'Arc Skill Stone Quick-Reference Guide</title>
  </head>
  
  <body>
    <c:choose>
      <c:when test="${bean.stone < '0'}">

        <h1>Jeanne d'Arc Skill Stone Quick-Reference Guide</h1>

        <c:forEach items="${bean.stoneList}" var="stone">
	  <a href="index.jsp?requestedStone=${stone.number}">${stone.name}<a></br>
	</c:forEach>

	</br>

	<h2><u>About</u></h2>
	
	<u>Shorthand</u></br>
	Shorthand used in the "Effects" section are taken directly from Darklao's FAQ (linked below) with some extra added. Refer to the "Skills and Damage Calculation" section of the FAQ for more detailed descriptions.</br></br>
	ATK - Physical Attack</br>
	DEF - Physical Defense</br>
	MATK - Magic Attack</br>
	MDEF - Magic Defense</br>
	ACC - Accuracy</br>
	EVA - Evasion</br>
	ATKm - Attack Modifier</br>
	ATKb - Attack Bonus</br>
	MATKb - Magic Attack Bonus</br></br>
	A 'p' (player) in front of a stat (e.g. pATK) represents the stat of the character unit using the attack.</br>
	An 'e' (enemy) in front of a stat (e.g. eMDEF) represents the stat of the opponent unit receiving the attack.</br>
	</br>

	Symbols used in the "Area of Effect" section are as follows:</br></br>
	U - The character unit initiating the skill</br>
	T - The target grid cell (for ranged skills)</br>
	X - Affected grid cells</br>
	</br>
	
	<u>Sources</u></br>
	All information comes from:</br>
	<a href="http://www.cheatcc.com/psp/sg/jeanne_darc.txt">Chaotic_Fusion's FAQ/Walkthrough</a> (skill descriptions and rarity values)</br>
	<a href="http://www.gamefaqs.com/psp/934454-jeanne-darc/faqs/50626">Darklao's FAQ/Walkthrough</a> (everything else)</br>
	</br>

	<u>Legal</u></br>
	Jeanne d'Arc and all its components are the property of Level 5 and SCEA. All trademarks and copyrights present are owned by their respective trademark and copyright holders.
      </c:when>
      <c:otherwise>
        <c:choose>
	  <c:when test="${bean.stone > '173'}">
	    Don't do that.</br></br>
	  </c:when>
	  <c:otherwise>
	    <c:set var="stone" value="${bean.stoneInfo}"/>
	
	    <h1 style="margin-bottom: 0;">${stone.name}</h1>
	    ${stone.description}</br></br>
	    
	    <b>Type:</b>
	    ${stone.type}</br>
	
	    <b>Rarity:</b>
	    <c:forEach begin="1" end="${stone.rarity}">*</c:forEach></br>	

	    <c:if test="${stone.effect != 'n/a'}">
	      <b>Effect:</b>
	      ${stone.effect}</br>	
	    </c:if>

	    <c:if test="${stone.requiredLevel != 0}">
	      <b>Required level:</b>
	      ${stone.requiredLevel}</br>	
	    </c:if>	    

	    <c:if test="${stone.mpCost != 0}">
	      <b>MP cost:</b>
	      ${stone.mpCost}</br>	
	    </c:if>	    	    

	    <c:if test="${stone.weapon != 'n/a'}">
	      <b>Weapon:</b>
	      ${stone.weapon}</br>	
	    </c:if>	    	    

	    <c:if test="${stone.duration != 0}">
	      <b>Duration:</b>
	      ${stone.duration}
	      <c:choose>
	        <c:when test="${stone.duration == 1}"> turn</c:when>
	      	<c:otherwise> turns</c:otherwise>
	      </c:choose>
	      </br>
	    </c:if>

	    <c:if test="${stone.type == 'Innate skill (Purple)' || stone.type == 'Statistic (Blue)'}">
	      <b>Duration:</b>
	      Permanent while equipped</br>
	    </c:if>
	
	    <c:if test="${stone.range >= 0}">
	      <b>Range:</b>
	      <c:choose>
	        <c:when test="${stone.range == 0}">
	          Self
	        </c:when>
		<c:when test="${stone.range == 50}">
	          Weapon
	        </c:when>
		<c:when test="${stone.range == 100}">
	          Map
	        </c:when>
		<c:otherwise>
		  ${stone.range}
		</c:otherwise>
	      </c:choose>
	      </br>
	    </c:if>

	    <c:if test="${stone.thruObstacles != 'n/a'}">
	      <b>Through obstacles:</b>
	      ${stone.thruObstacles}</br>
	    </c:if>

	    <c:if test="${stone.reversible != 'n/a'}">
	      <b>Reversible:</b>
	      ${stone.reversible}</br>	
	    </c:if>

	    <c:choose>
	      <c:when test="${stone.aoe != 'n/a'}">
	        <b>Area of effect:</b></br>
	        <pre>${stone.aoe}</pre>
	      </c:when>
	      <c:otherwise>
	        </br>
	      </c:otherwise>
	    </c:choose>	      

	    <b>Skillbinding formulae:</b></br>
	    <c:forEach items="${stone.creationFormulae}" var="formula">
	      <a href="index.jsp?requestedStone=${formula.item1.number}">${formula.item1.name}</a>  
	      <b>=</b>  
	      <a href="index.jsp?requestedStone=${formula.item2.number}">${formula.item2.name}</a>  
	      <b>+</b>  
	      <a href="index.jsp?requestedStone=${formula.item3.number}">${formula.item3.name}</a></br>
	    </c:forEach>
		
	    <c:forEach items="${stone.componentFormulae}" var="formula">
	      <a href="index.jsp?requestedStone=${formula.item1.number}">${formula.item1.name}</a>  
	      <b>+</b>  
	      <a href="index.jsp?requestedStone=${formula.item2.number}">${formula.item2.name}</a>  
	      <b>=</b>  
	      <a href="index.jsp?requestedStone=${formula.item3.number}">${formula.item3.name}</a></br>
	    </c:forEach>
	    </br>

	    <c:if test="${fn:length(stone.creationFormulae) == 0 && fn:length(stone.componentFormulae) == 0}">
	      None</br></br>
	    </c:if>
	    
	    </c:otherwise>
	  </c:choose>  
	
	<a href="index.jsp?requestedStone=-1">Back to list</a>
      </c:otherwise>
    </c:choose>
  </body>
</html>