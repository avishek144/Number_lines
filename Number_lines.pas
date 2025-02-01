PROGRAM demo_program(input, output);

CONST
   blank       = ' ';
   maximum_line_number_columns = 7;

VAR
   line_number, number_of_characters : integer;
   c                                 : char;

BEGIN
   line_number := 1;
   number_of_characters := 0;

   WHILE NOT eof(input) DO
   BEGIN
      Write(output, line_number:maximum_line_number_columns, blank);
      WHILE (NOT eoln(input)) AND (NOT eof(input)) DO
      BEGIN
         Read(input, c);
         IF c <> blank THEN
            number_of_characters := number_of_characters + 1;
         Write(output, c)
      END;

      Readln(input);
      Writeln(output);
      line_number := line_number + 1
   END;

   writeln;
   writeln(output, 'Number of characters:', blank, number_of_characters)
END.
