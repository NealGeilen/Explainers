<script setup lang="ts">
import { loadSlim } from "tsparticles-slim";

const particlesInit = async engine => {
  // await loadFull(engine);
  await loadSlim(engine);
};

const particlesLoaded = async container => {
  console.log("Particles container loaded", container);
};

</script>

<template>
  <div class="d-flex justify-center align-center w-100 h-100">
    <div class="d-block">
      <h1 class="text-primary text-center">Explainers</h1>
      <v-row>
        <v-col cols="4" md="6">
          <v-card>
            <v-card-title>Test</v-card-title>
            <v-card-text>Description</v-card-text>
          </v-card>
        </v-col>
        <v-col cols="4" md="6">
          <v-card>
            <v-card-title>Test</v-card-title>
            <v-card-text>Description</v-card-text>
          </v-card>
        </v-col>
        <v-col cols="4" md="6">
          <v-card>
            <v-card-title>Test</v-card-title>
            <v-card-text>Description</v-card-text>
          </v-card>
        </v-col>
        <v-col cols="4" md="6">
          <v-card>
            <v-card-title>Test</v-card-title>
            <v-card-text>Description</v-card-text>
          </v-card>
        </v-col>
      </v-row>
    </div>
  </div>

  <vue-particles
      id="tsparticles"
      :particlesInit="particlesInit"
      :particlesLoaded="particlesLoaded"
      :options="{
                    // background: {
                    //     color: {
                    //         value: '#0d47a1'
                    //     }
                    // },
                    fpsLimit: 60,
                    interactivity: {
                        events: {
                            onClick: {
                                enable: true,
                                mode: 'push'
                            },
                            resize: true
                        },
                        modes: {
                            bubble: {
                                distance: 400,
                                duration: 2,
                                opacity: 0.8,
                                size: 40
                            },
                            push: {
                                quantity: 4
                            },
                            repulse: {
                                distance: 200,
                                duration: 0.4
                            }
                        }
                    },
                    particles: {
                        color: {
                            value: '#ffffff'
                        },
                        links: {
                            color: '#ffffff',
                            distance: 150,
                            enable: true,
                            opacity: 0.5,
                            width: 1
                        },
                        move: {
                            direction: 'none',
                            enable: true,
                            outMode: 'bounce',
                            random: false,
                            speed: 6,
                            straight: false
                        },
                        number: {
                            density: {
                                enable: true,
                                area: 8000
                            },
                            value: 80
                        },
                        opacity: {
                            value: 0.5
                        },
                        shape: {
                            type: 'circle'
                        },
                        size: {
                            random: true,
                            value: 5
                        }
                    },
                    detectRetina: true
                }"
  />
</template>
