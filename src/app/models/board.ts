class Board {
    columns: number;
    rows: number;
    cells: Cell [][];

    constructor(columns: number, rows: number){
        this.columns = columns;
        this.rows = rows;
        this.cells = [[]];
        for (let i = 0; i <= rows; i++) {
            for (let j = 0; j <= columns; j++) {
                const cell = new Cell(i , j);
                this.cells[i][j] = cell;
            }
        }
    }
  }
  