#include <iostream>
#include <raylib.h>
#include <deque>
#include <raymath.h>

void Draw(int ScrW, int ScrH, const char* Title, int FPS) {
	InitWindow(ScrW, ScrH, Title);
	SetTargetFPS(FPS);
	
	while(WindowShouldClose() == false) {
		BeginDrawing();
		ClearBackground({25, 25, 25, 255});
		EndDrawing();
	}
}

int main() {
	Draw(512, 512, "HoloEditor", 60);	
}