/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SimulationManager.cpp
 * Author: fulop
 * 
 * Created on March 20, 2016, 5:27 PM
 */

#include "SimulationManager.h"

SimulationManager::SimulationManager() {
}

SimulationManager::SimulationManager(const SimulationManager& orig) {
}

SimulationManager::~SimulationManager() {
}

/* Singleton */
SimulationManager& SimulationManager::getInstance(){ 
    static SimulationManager instance;
    return instance;
}

/* Simulation checker */
bool SimulationManager::isSimulationEnabled(){
    return this->simulation_enabled;
}

/* Sets the simulation flag to true */
void SimulationManager::enableSimulation(){
    this->simulation_enabled = true;
}

/* Sets the simulation flag to false */
void  SimulationManager::disableSimulation(){
    this->simulation_enabled = false;
}

void SimulationManager::init(){
    SocketServer::getInstance().runServer();
}