class Spreadsheet {
  final int _rows;
  final Map<String, int> _memory = {};

  Spreadsheet(this._rows);

  void setCell(String cell, int value) {
    if (_isValidCell(cell)) {
      _memory[cell] = value;
    }
  }

  void resetCell(String cell) {
    _memory.remove(cell);
  }

  int getValue(String formula) {
    final terms = formula.substring(1).split('+');
    int result = 0;

    for (final term in terms) {
      result += _parseTerm(term.trim());
    }

    return result;
  }

  bool _isValidCell(String cell) {
    if (cell.isEmpty || cell.length < 2) return false;
    final row = int.tryParse(cell.substring(1));
    return row != null && row <= _rows;
  }

  int _parseTerm(String term) {
    final value = int.tryParse(term);
    if (value != null) return value;
    return _memory[term] ?? 0;
  }
}

/**
 * Your Spreadsheet object will be instantiated and called as such:
 * Spreadsheet obj = Spreadsheet(rows);
 * obj.setCell(cell,value);
 * obj.resetCell(cell);
 * int param3 = obj.getValue(formula);
 */