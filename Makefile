# Nombres de los archivos fuente
SOURCES = main.cpp file1.cpp file2.cpp file3.cpp file4.cpp file5.cpp file6.cpp file7.cpp file8.cpp file9.cpp file10.cpp

# Generar archivos objeto a partir de los archivos fuente
OBJECTS = $(SOURCES:.cpp=.o)

# Nombre del ejecutable
EXECUTABLE = main

# Compilador y opciones
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Regla para el ejecutable
$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Regla para los archivos objeto
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

# Limpiar los archivos generados
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
