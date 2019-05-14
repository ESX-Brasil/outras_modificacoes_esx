# esx_sistema_de_camera

[NOTAS]

* Este é um script simples que eu fiz há muito tempo, ainda é útil.

* Isso lhe dá a oportunidade de ter CCTV em algum lugar ou de adicioná-lo à venda de drogas para o script npc.

* Exemplo: eu adicionei isso no meu selldrugs para script npc. O que os faz pegar o telefone e enviá-lo para a delegacia.

```lua
function CallPolice()
    local currentPed = oldPed

    ESX.ShowNotification('Eu não quero esse tipo de coisa!')

    FreezeEntityPosition(currentPed, false)

    Citizen.Wait(2000)

    ESX.LoadAnimDict('cellphone@')

    TaskReactAndFleePed(currentPed, PlayerPedId())

    Citizen.Wait(1000)

    TaskPlayAnim(currentPed, 'cellphone@','cellphone_call_listen_base' ,3.0, -1, -1, 50, 0, false, false, false)

    Citizen.Wait(3000)

    if GetEntityHealth(currentPed) > 0 then

        local x,y,z = table.unpack(GetEntityCoords(currentPed))

        TriggerEvent('skinchanger:getSkin', function(skin)
            TriggerServerEvent('esx_sistema_de_camera:addWitness', skin, "Drugvictim")
        end)

        TriggerServerEvent('esx_phone:send', 'police', 'Alguém tentou me vender drogas, eu consegui uma foto dele, enviei para você!', { x = x, y = y, z = z })
    end

    currentlyDoingDeal = false

end
```

* Isso faz com que eles sejam adicionados à lista de testemunhas:

```lua
    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerServerEvent('esx_sistema_de_camera:addWitness', skin, "Testemunha")
    end)
```

* Você poderia facilmente criar um sistema de CFTV e contar a todos que passassem por uma porta com o trecho de código acima de ^

[REQUISITOS]

* ESX
* esx_skin
* skinchanger

[INSTALAÇÃO]

1) Download: https://github.com/ESX-Brasil/outras_mundificacoes_esx/tree/master/esx_sistema_de_camera

2) Adicione isto em seu server.cfg :
``start esx_sistema_de_camera``
