module vibe.database.domain.types.typespec;

import vibe.database;

@safe:

struct TypeSpec {
    ColumnType type;
    string name; /// kanonischer SQL-Name; steht in Tabellendateien und Backups, darf sich also nicht ändern
    string edm;
    string[] aliases;

    Json toJson() const {
        return Json.emptyObject
            .set("type", type.to!string)
            .set("name", name)
            .set("edm", edm)
            .set("aliases", aliases.toJson);
    }
}