(*
 Number_lines.pas -- Number the lines of its input.
 Copyright (C) 2025 by Avishek Gorai <avishekgorai@myyahoo.com>

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *)

PROGRAM number_the_lines(input, output);

CONST
   blank                = ' ';
   line_number_comlumns = 7;

VAR
   line_number, number_of_characters : integer;
   c                                 : char;

BEGIN
   line_number := 1;
   number_of_characters := 0;

   WHILE NOT eof(input) DO
   BEGIN
      write(output, line_number:line_number_comlumns, blank);
      WHILE (NOT eoln(input)) AND (NOT eof(input)) DO
      BEGIN
         Read(input, c);
         IF c <> blank THEN
            number_of_characters := number_of_characters + 1;
         write(output, c)
      END;

      IF eoln(input) THEN
      BEGIN
         readln(input);
         writeln(output);
         line_number := line_number + 1
      END
   END;

   writeln;
   writeln(output, 'Number of characters:', blank, number_of_characters)
END.
