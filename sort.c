#include "stdio.h"
#include "sort.h"
#include "string.h"
#include "stdlib.h"

void merge(element *pElement, element *tmpStations, int left, int middle, int right);

/*
 Comment
 */
void selection_sort(element *stations, int size) {
    // implement selection_sort

    char min[100];
    for (int i = 0; i < size - 1; i++) {
        int min_id = i;
        strcpy(min, stations[i].station_name);
        for (int j = i + 1; j < size; j++) {
            if (strcmp(min, stations[j].station_name) > 0) {
                strcpy(min, stations[j].station_name);
                min_id = j;
            }
        }
        if (strcmp(stations[min_id].station_name, stations[i].station_name) != 0) {
            char temp[100];
            strcpy(temp, stations[i].station_name);
            strcpy(stations[i].station_name, stations[min_id].station_name);
            strcpy(stations[min_id].station_name, temp);
        }

    }
}

/*
 Comment
 */
void merge_sort(element *stations, element *tmpStations, int left, int right) {
    // tmpStations corresponds to the array B in the lecture slides

    if (left < right) {
        int middle = (left + right) / 2;

        merge_sort(stations, tmpStations, left, middle);
        merge_sort(stations, tmpStations, middle + 1, right);

        merge(stations, tmpStations, left, middle, right);
    }


}

void merge(element *stations, element *tmpStations, int left, int middle, int right) {

/*    for (int j = 0; j < middle - left + 1; ++j) {
        strcpy(tmpStations[j].station_name, stations[left + j].station_name);
    }*/
    for (int k = 0; k < right - middle; ++k) {
//        strcpy(tmpStations[k].station_name, stations[middle + 1 + k].station_name);
        tmpStations[k] = stations[middle + 1 + k];
    }


    // use pointer ?

    int p = 1;
    int q = right;


//    element *tmp = stations;

    for (int i = left; i < right; ++i) {
        if (strcmp(stations[p].station_name, tmpStations[q].station_name) > 0) {
            char *dest = stations[i].station_name;
            char *source = tmpStations[p].station_name;
            strcpy(dest, source);
            p++;
        } else {
            strcpy(stations[i].station_name, tmpStations[q].station_name);
            q--;
        }
//        tmp++;
    }

}
