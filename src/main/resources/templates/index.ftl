<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Index</title>
</head>
<body>
<#import "/spring.ftl" as spring />

<form class="example" action="/admin/search" name="searchForm" method="GET">
    <input type="text" placeholder="Search by AFM or Surname" name="criteria">
    <button type="submit"> Search Person</button>
</form>

<#if foundPersonList??>
    <#list foundPersonList as person>
    <b> ${person} </b>
    </#list>
<#elseif searchError??>
    ${searchError}
</#if>
</body>
</html>