[#ftl]

[#macro page title]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title}</title>
        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="/css/normalize.css" th:href="@{/css/normalize.css}">
        <link rel="stylesheet" href="/css/skeleton.css" th:href="@{/css/skeleton.css}">
        <link rel="stylesheet" href="/css/main.css" th:href="@{/css/main.css}">
        <link rel="icon" type="image/png" href="/images/favicon.png" th:href="@{/images/favicon.png}">
    </head>
    <body>
    <main class="container">
        [#nested]
    </main>
    </body>
    </html>
[/#macro]

[#macro pager]
    <div class="pager">
        [@pagerLink page=0 active=false text="⇤" /]
        [@pagerLink page=osoby.number - 1 active=osoby.first text="←" /]
        [#list (0..!osoby.totalPages) as pageNumber]
            [@pagerLink page=pageNumber active=pageNumber==osoby.number text=pageNumber + 1 /]
        [/#list]
        [@pagerLink page=osoby.number + 1 active=osoby.last text="→" /]
        [@pagerLink page=osoby.totalPages - 1 active=false text="⇥" /]
    </div>
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page active">${text}</span>
    [#else ]
        <a href="${currentURL}?size=${osoby.size}&page=${page}" class="page">${text}</a>
    [/#if]
[/#macro]

[#macro controls]
    <div class="controls">
        <a href="/vyber" class="button">Výběrový formulář</a>
    </div>
[/#macro]
