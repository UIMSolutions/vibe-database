module vibe.database.domain.types.queryresult;

import vibe.database;

@safe:

struct QueryResult {
    string[] columns;
    Value[][] rows;
    long affected;
    string message;
    string transaction; // gesetzt von BEGIN
}