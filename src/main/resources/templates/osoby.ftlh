[#ftl]
[@c.page title="Seznam osob"]
    <h1>Seznam osob</h1>
    <table class="u-full-width">
        <thead>
        <tr>
            <th>Jméno</th>
            <th>Příjmení</th>
            <th>Datum narození</th>
        </tr>
        </thead>
        <tbody>
        [#list osoby.content as osoba]
            <tr>
                <td>${osoba.jmeno}</td>
                <td>${osoba.prijmeni}</td>
                <td>${osoba.datumNarozeni?date?string}</td>
            </tr>
        [/#list]
        </tbody>
    </table>

    [@c.pager /]
    [@c.controls /]

[/@c.page]
