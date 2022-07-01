---
title: Seating Plan
feature_image: "../assets/images/sunset-nyc.jpg"
image: "../assets/images/sweden-aperol.jpg"
---

<script src="http://d3js.org/d3.v3.min.js"></script>

<br>
<div class="search-container">
  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for a name...">
</div>


<div class="table-container">
<table id="myTable">
  <tr>
    <th>Name</th>
    <th>Table</th>
  </tr>
</table> 
<br>

</div>

<script>

d3.text("../tables.csv", function(data) {
    var parsedCSV = d3.csv.parseRows(data);

    var container = d3.select("table")

        .selectAll("tr")
            .data(parsedCSV).enter()
            .append("tr")

        .selectAll("td")
            .data(function(d) { return d; }).enter()
            .append("td")
            .text(function(d) { return d; });
});



function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

<style>

tr th {
    font-family: "Josefin Sans", sans-serif;
    font-style: normal;
    font-weight: 600;
    
}


tr td{
    font-family: "Josefin Sans", sans-serif;
    font-style: normal;
    font-weight: 300;
    
}


table {
  text-align: center;
}


</style>