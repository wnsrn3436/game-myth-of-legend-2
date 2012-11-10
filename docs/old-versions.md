# Earlier versions

This describes how the three sets under `old/` lead up to the final game.

## 2009-11-prototype

`prototype.gmk` is a GameMaker 7 project, an engine testbed that first tried keeping unit stats in `global.ex_*` arrays read by a single unit object. Unit graphics are not stored in the project. They are read at runtime from `sploz\spl_<id>_<n>.prmt`, password protected zip files unpacked through `ml_uns.dll` and loaded with `sprite_add`. The first room jumps straight into a 2000x2000 test room where drag selection, the minimap, resources, and 8 start points work. One unit (the villager) is defined, and there is no menu and no networking.

## 2009-12-planning

A restart on GameMaker 8. The plan was to keep stats, graphics, sounds, terrain, triggers, and maps in per-folder `.dlrc` archives, and each folder's `notes.txt` together with `dlrc-format.txt` documents that design. `.dlrc` is an archive built in GML alone without a DLL: a text index followed by a byte-scrambled body.

- `new-ml2.gmk`: a fresh fog of war and minimap fog demo. Units are empty objects that only stamp their sight.
- `terrain-editor.gmk`: a tool that packs terrain PNGs with a name into `sy_tri\tri_<n>.dlrc`. Add, add frame, rename, copy, delete, and extract to folder all work.
- `map-editor.gmk`: a map editor that reads the terrain archives, paints, and saves to `.maps2`. Only terrain editing exists, with no loading and no unit placement. It shares its gameId with the terrain editor, so it branched from that project.

The dlrc design was not carried into later versions. The final game keeps stats as plain txt and graphics as `.gmspr`.

## 2010-02-dongto-yeomyeong

The predecessor, titled 동토의 여명. `v1.0/dongto-yeomyeong-v1.0.gmk` is the source and `v1.2-decompiled/dongto-yeomyeong-v1.2.gmk` is the decompiled v1.2 executable. Both share a gameId and have nearly the same rooms and scripts. The decompiled one is a slightly later build with two more sprites and one more object.

It is a finished game: 39dll multiplayer with hosting and joining, a lobby from 1vs1 to 4vs4, a computer AI, and 9 Joseon and 8 Slime units. Its numeric unit ids (Joseon 0 to 8, Slime 100 to 107) and UI sprite names carried straight into the final game. The final game replaced the networking with the FN Simple Scripts written for it and moved the unit graphics and stat scripts out of the project into external files.
