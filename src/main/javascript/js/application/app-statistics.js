import $ from "jquery";
import "tablesorter";
import { dataValueNumberParser } from "../../components/table-sortable/parser-data-value-number";

$(document).ready(function () {
  $.tablesorter.addParser(dataValueNumberParser);

  $("#application-statistic-table").tablesorter({
    sortList: [[1, 0]],
    headers: {
      0: { sorter: false },
      3: { sorter: false },
      4: { sorter: false },
      6: { sorter: dataValueNumberParser.id },
      7: { sorter: dataValueNumberParser.id },
      8: { sorter: dataValueNumberParser.id },
    },
  });
});
