<div class="table" style="padding-left: 0px;position: relative;top: -45px;">
        <#if foundPersonList??>
        <table id="Persons" class="table table-striped">
            <thead>
            <tr>
                <th>AFM</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Adress</th>
                <th>Email</th>
                <th>Car Brand</th>
                <th>Plate Number</th>
                <th>User Type</th>
            </tr>
            </thead>
            <tbody>

            <#list foundPersonList as Person>
            <tr>

                <td> ${Person.afm}</td>
                <td> ${Person.name}</td>
                <td> ${Person.surname}</td>
                <td> ${Person.address}</td>
                <td> ${Person.email}</td>
                <td> ${Person.carBrand}</td>
                <td> ${Person.plateNumber}</td>
                <td> ${Person.userType}</td>


                <td class="text-right">
                    <button class="btn btn-danger button-delete-confirmation" type="submit" value="Delete">Delete
                    </button>
                    <button class="btn btn-success" type="submit" value="Edit" href="/admin">Edit</button>
                </td>
            </tr>
            </#list>
        <#elseif searchError??>
            ${searchError}
        </#if>
</tbody>
</table>


</div>