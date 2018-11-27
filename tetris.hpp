#ifndef TETRIS_HPP
#define TETRIS_HPP

#include <string>

namespace tetris
{
    const char TITLE[] = "Manu Tetris !"; 
    const int GRID_WIDTH(10);
    const int GRID_HEIGHT(22);

    const int BLOCK_SIZE(10);

    const int HEIGHT(BLOCK_SIZE * GRID_HEIGHT);
    const int WIDTH(BLOCK_SIZE * GRID_WIDTH); 
};


#endif
