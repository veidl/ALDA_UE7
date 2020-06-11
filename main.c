//
//  main.c
//  SortingG
//
//  Created by Michael Strommer on 04.06.20.
//  Copyright © 2020 Michael Strommer. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "sort.h"

// Prototypes
int readfile(element *stations, int *size);

void print_stations(element *stations, int size);

// Impl
int main(int argc, char **argv) {
    element *stations; // holds the station codes and names
    element *tmpStations; // holds temporary station codes and names for merge sort
    int size; // holds the number of valid entries in the array

    stations = (element *) malloc(sizeof(element) * 6000);
    tmpStations = (element *) malloc(sizeof(element) * 6000);

/*    // now lets try selection sort
    printf("Sorting with selection sort:\n\n");
    // read the station data from file
    readfile(stations, &size);
    // sort the station names
    selection_sort(stations, size);
    // print the result
    print_stations(stations, size);*/


    // now lets try merge sort
    printf("Sorting with merge sort:\n\n");
    // read the station data from file
    readfile(stations, &size);
    // sort the station names
    merge_sort(stations, tmpStations, 0, size-1);
    // print the result
    print_stations(stations, size);

    free(stations);
    free(tmpStations);

    return 0;
}


int readfile(element *stations, int *size) {
    FILE *fp;
    char line[100]; // keeps one line of the file

    // try to open the file; in case of an error exit the program
    *size = 0;
    fp = fopen("C:\\Users\\Thomas\\CLionProjects\\UE7\\stations.csv", "r");
    if (!fp) {
        printf("Cannot open file stations.csv!\n");
        return 1;
    }

    // read all weather stations from file and add them to the
    // hash table
    while (!feof(fp)) {
        // read one line and skip empty and comment lines
        fgets(line, 100, fp);
        if (line[0] == '#') continue;
        if (isspace(line[0])) continue;

        // take the first 4 characters as key value
        strncpy(stations[*size].icao_code, line, 4);
        stations[*size].icao_code[4] = '\0';

        // take the rest as value
        strcpy(stations[*size].station_name, strchr(line, ';') + 1);
        *size += 1;
    }

    // close the file
    fclose(fp);

    return 0;
}

void print_stations(element *stations, int size) {
    int i;
    for (i = 0; i < size; i++) {
        printf("%s : %s", stations[i].icao_code, stations[i].station_name);
    }
}
