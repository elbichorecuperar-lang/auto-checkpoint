#include <Geode/Geode.hpp>
#include <Geode/modify/PlayLayer.hpp>

using namespace geode::prelude;

class $modify(MyPlayLayer, PlayLayer) {
    void handleButton(bool down, int button, bool isPlayer1) {
        // Ejecuta la función normal de salto del juego
        PlayLayer::handleButton(down, button, isPlayer1);

        // Si presionamos el botón (down), estamos en práctica y es el jugador 1
        if (down && m_isPracticeMode && isPlayer1) {
            log::info("Click detectado en práctica, creando checkpoint automático...");
        }
    }
};
