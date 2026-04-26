# Bookstore Database + Python CLI

**Name:** Eilon

## Description

A music bookstore database containing biographies of famous musicians, instructional books for learning instruments, music theory textbooks, and sheet music collections. The database is built with SQLite and managed through a Python command-line interface.

## Files

- `createTables.sql` — creates the `category` and `book` tables
- `insertRows.sql` — inserts sample categories and books
- `bookstore.db` — the SQLite database file
- `bookstore_cli.py` — Python CLI program for browsing and managing the bookstore

## Create the Database

```bash
python3 - <<'PY'
import sqlite3
con = sqlite3.connect('bookstore.db')
with open('createTables.sql') as f:
    con.executescript(f.read())
with open('insertRows.sql') as f:
    con.executescript(f.read())
con.commit()
con.close()
PY
```

Or if you have the `sqlite3` shell installed:

```bash
sqlite3 bookstore.db < createTables.sql
sqlite3 bookstore.db < insertRows.sql
```

## Run the Python CLI

```bash
python3 bookstore_cli.py
```

## Menu Options

1. View all categories
2. View all books
3. View books in a category
4. Search books by title
5. Search books by author *(bonus feature)*
6. Add a new book
7. Update a book price
8. Delete a book
9. Quit

## Notes

- All queries use parameterized placeholders (`?`) to prevent SQL injection.
- The `image` field stores only a filename — images are not displayed in the CLI.
- The database will be reused in the next assignment (Flask web app).
