SELECT Name, Title,AlbumId
FROM albums
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE artists.ArtistId= 99;

SELECT count(*) FROM Genres
JOIN tracks on Genres.GenreId = tracks.GenreId
WHERE Genres.GenreId = 8

SELECT * FROM playlists
JOIN playlist_track ON playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = "Classical"

-- Find all the artists for a given Genre
SELECT artists.Name AS ArtistName, genres.Name AS Genre
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Jazz';

-- Find the Playlist with the most songs:
SELECT playlists.Name AS PlaylistName, COUNT(playlist_track.TrackId) AS NumberOfSongs
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.PlaylistId
ORDER BY NumberOfSongs DESC
-- LIMIT 1;

-- Find the Playlist with the least songs:
SELECT playlists.Name AS PlaylistName, COUNT(playlist_track.TrackId) AS NumberOfSongs
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.PlaylistId
ORDER BY NumberOfSongs ASC
-- LIMIT 1;

-- Find the total for a given invoice:
SELECT * FROM invoices

SELECT InvoiceId, Total
FROM invoices
WHERE InvoiceId = 11;

-- Find all the playlists containing a given genre
SELECT playlists.Name AS PlaylistName
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Rock';

-- Find the biggest invoice amount:
SELECT MAX(Total) AS MaxInvoiceAmount
FROM invoices;

-- Find the smallest invoice amount:
SELECT MIN(Total) AS MinInvoiceAmount
FROM invoices;

-- Find the artist with the most songs:
SELECT artists.Name AS ArtistName, COUNT(tracks.TrackId) AS NumberOfSongs
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY artists.ArtistId
ORDER BY NumberOfSongs DESC
-- LIMIT 1;

-- Find the artist with the least songs:
SELECT artists.Name AS ArtistName, COUNT(tracks.TrackId) AS NumberOfSongs
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY artists.ArtistId
ORDER BY NumberOfSongs ASC
LIMIT 1;


