PRAGMA foreign_keys = ON;

INSERT INTO category (categoryId, categoryName, categoryImage) VALUES
(1, 'Biographies', 'biographies-category.jpg'),
(2, 'Learn to Play', 'learn-to-play-category.jpg'),
(3, 'Music Theory', 'music-theory-category.jpg'),
(4, 'Scores and Collections', 'scores-and-collections-category.jpg');

INSERT INTO book (bookId, categoryId, title, author, isbn, price, image, readNow) VALUES
-- Biographies (category 1)
(1,  1, 'Beethoven: Anguish and Triumph',              'Jan Swafford',        '9780618054749', 24.99, 'beethoven.jpg',  1),
(2,  1, 'Lady Gaga: Applause',                         'Annie Zaleski',        '9781250203564', 19.99, 'ladygaga.jpg',   0),
(3,  1, 'Duke: A Life of Duke Ellington',              'Terry Teachout',       '9781594036682', 21.99, 'ellington.jpg',  0),
(4,  1, 'Clapton: The Autobiography',                  'Eric Clapton',         '9780767920551', 18.99, 'clapton.jpg',   0),

-- Learn to Play (category 2)
(5,  2, 'Hal Leonard Guitar Method Book 1',            'Will Schmid',          '9780793523054', 14.99, 'guitar.jpg',    1),
(6,  2, 'Alfred''s Basic Adult Piano Course Lesson Book 1', 'Willard A. Palmer','9780882846163', 16.99, 'piano.jpg',    1),
(7,  2, 'Hal Leonard Bass Method Book 1',              'Ed Friedland',         '9780793563333', 13.99, 'bass.jpg',      0),

-- Music Theory (category 3)
(8,  3, 'Music Theory for Dummies',                   'Michael Pilhofer',     '9781119575528', 22.99, 'theory.jpg',    1),
(9,  3, 'The Complete Idiot''s Guide to Music Theory', 'Michael Miller',       '9781592574377', 20.99, 'idiot-theory.jpg', 0),
(10, 3, 'Tonal Harmony',                              'Stefan Kostka',        '9780078025143', 49.99, 'tonal.jpg',     0),

-- Scores and Collections (category 4)
(11, 4, 'The Real Book: Volume I (C Edition)',         'Hal Leonard Corp.',    '9780634060380', 39.99, 'realbook.jpg',  0),
(12, 4, 'The Beatles Complete Scores',                 'The Beatles',          '9780793518326', 59.99, 'beatles.jpg',   1),
(13, 4, 'Bach: Well-Tempered Clavier Book I',          'Johann Sebastian Bach','9780486242279', 12.99, 'bach.jpg',      0);
