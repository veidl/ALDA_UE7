//
//  sort.h
//  SortingG
//
//  Created by Michael Strommer on 04.06.20.
//  Copyright © 2020 Michael Strommer. All rights reserved.
//

#ifndef sort_h
#define sort_h

struct _element {
    char icao_code[5];
    char station_name[100];
};

typedef struct _element element;

void selection_sort(element* stations, int size);
void merge_sort(element* stations, element* tmpStations, int left, int right);

#endif /* sort_h */
