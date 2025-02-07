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

PROGRAM number_the_lines;

CONST
   blank = ' ';

VAR
   line_number, number_of_characters : integer;
   c                                 : char;

BEGIN
   line_number := 1;
   number_of_characters := 0;

   writeln('Copyright (C) 2025  Avishek Gorai <avishekgorai@myyahoo.com>');
   writeln;

   writeln('This program is free software: you can redistribute it and/or modify');
   writeln('it under the terms of the GNU General Public License as published by');
   writeln('the Free Software Foundation, either version 3 of the License, or');
   writeln('(at your option) any later version.');
   writeln;

   writeln('This program is distributed in the hope that it will be useful,');
   writeln('but WITHOUT ANY WARRANTY; without even the implied warranty of');
   writeln('MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the');
   writeln('GNU General Public License for more details.');
   writeln;

   writeln('You should have received a copy of the GNU General Public License');
   writeln('along with this program.  If not, see <https://www.gnu.org/licenses/>.');
   writeln;


   WHILE NOT eof DO
   BEGIN
      write(line_number, blank);
      WHILE (NOT eoln) AND (NOT eof) DO
      BEGIN
         read(c);
         IF c <> blank THEN
            number_of_characters := number_of_characters + 1;
         write(c)
      END;

      IF eoln THEN
      BEGIN
         readln;
         writeln;
         line_number := line_number + 1
      END
   END;

   writeln;
   writeln('Number of characters:', blank, number_of_characters)
END.
