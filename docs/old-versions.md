# Earlier versions

This describes how the three sets under `old/` lead up to the final game.

## 2009-11-prototype

`prototype.gmk` is an engine testbed made with GameMaker 7. This project was the first to try keeping unit stats in `global.ex_*` arrays and having a single unit object read those values. Unit graphics are not stored in the project but read at runtime from `sploz\spl_<id>_<n>.prmt`. A `.prmt` is a password-protected zip, unpacked through `ml_uns.dll` and loaded with `sprite_add`. The first room goes straight to a 2000x2000 test room with working drag selection, minimap, resources, and start points for 8 players. The villager is the only unit defined, and there is no menu or networking.

## 2009-12-planning

After moving to GameMaker 8, the project was rewritten from scratch. The plan was to keep stats, graphics, sounds, terrain, triggers, and maps all in per-folder `.dlrc` archives, and each folder's `notes.txt` and `dlrc-format.txt` describe that design. `.dlrc` is an archive built in GML alone without a DLL: a text index followed by a byte-scrambled body.

- `new-ml2.gmk`: a demo with newly written fog of war and minimap fog. Units are empty objects that only stamp their sight.
- `terrain-editor.gmk`: a tool that packs terrain PNGs with a name into `sy_tri\tri_<n>.dlrc`. Add, add frame, rename, copy, delete, and extract to folder all work.
- `map-editor.gmk`: a map editor that reads the terrain archives, paints, and saves to `.maps2`. Only terrain editing exists, with no loading and no unit placement. It shares its gameId with the terrain editor, so it branched from that project.

The dlrc design was not used in later versions. The final game keeps stats as plain txt and graphics as `.gmspr`.

## 2010-02-dongto-yeomyeong

This is the predecessor, titled 동토의 여명. `v1.0/dongto-yeomyeong-v1.0.gmk` is the source and `v1.2-decompiled/dongto-yeomyeong-v1.2.gmk` is the decompiled v1.2 executable. Both share a gameId and have nearly the same rooms and scripts, but the decompiled one is a slightly later build with two more sprites and one more object.

It is a finished game, with 39dll multiplayer where players create and join rooms, a lobby from 1vs1 to 4vs4, a computer AI, and a full set of 9 Joseon and 8 Slime units. Its handling of units by numeric id (Joseon 0 to 8, Slime 100 to 107) and its UI sprite names carried straight into the final game. From here the final game replaced the networking with the author's own FN Simple Scripts and moved the unit graphics and stat scripts that were inside the project out into files outside the executable.
