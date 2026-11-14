module vibe.database.domain.types.tablestats;

import vibe.database;
import vibe.database.domain.types.columnstats;
import vibe.database.domain.enumerations.tablestorage;

@safe:

struct TableStats {
    string table;
    size_t rows, deletedRows;
    ColumnStats[] columns;
    TableStorage storage;

    Json toJson() const {
        return Json.emptyObject
            .set("table", table)
            .set("rows", rows)
            .set("deletedRows", deletedRows)
            .set("columns", columns.map!(c => c.toJson).array.toJson)
            .set("storage", storage.to!string);
    }
}
