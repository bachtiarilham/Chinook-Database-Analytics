/*	Playlist Paling Populer: 
	Tampilkan nama playlist dan jumlah lagu di dalamnya, 
	urutkan dari yang paling banyak.
*/

SELECT 
	playlist.`Name`,
	COUNT(playlisttrack.TrackId) AS jumlahlagu
FROM 
	playlisttrack
	JOIN playlist ON playlist.PlaylistId = playlisttrack.PlaylistId
	GROUP BY playlist.PlaylistId
;