# Labbmiljö, Git, CLI och AI

## 1. Introduktion


## 2. Labbmiljö & Nätverk
Labbmiljön körs i Proxmox VE 9.2.21 och består av en Linux-server och en Windows-klient. Båda är anslutna till en isolerad Linux-brygga (vmbr1) utan fysisk nätverksport, vilket gör att de kan kommunicera med varandra men inte med omvärlden.

### Virtuella maskiner
| VMID | VM | OS | CPU | RAM | Disk | Nätverk |
|---|---|---|---|---|---|---|
| 100 | lab-linux | Ubuntu 26.04 LTS | 2 vCPU | 4 GB | 32 GB | Brygga `vmbr1` (internt) |
| 101 | lab-windows | Windows Server 2025 | 2 vCPU | 4 GB | 64 GB | Brygga `vmbr1` (internt) |

### Nätverkskonfiguration
| Hostname | Operativsystem | IP-adress | Subnätmask | Standard Gateway |
|---|---|---|---|---|
| lab-linux | Ubuntu 26.04 LTS | 192.168.1.50 | 255.255.255.0 | Ingen* |
| lab-windows | Windows Server 2025 | 192.168.1.51 | 255.255.255.0 | Ingen* |

![images/linux.png](images/linux.png)
![images/windows.png](images/windows.png)

*Internt nätverk utan router, därför behövs ingen gateway.


### Val av nätverkstyp
Jag skapade en separat brygga, vmbr1, under Datacenter -> <nod> (pve i mitt fall) -> System -> Network -> Create -> Linux Bridge, utan att ange någon "Bridge port". Den fungerar då som ett internt nätverk: maskinerna når varandra men är isolerade från värdens fysiska nätverk och internet. Båda VM:arna fick sitt nätverkskort kopplat till vmbr1 under Hardware -> Network Device.

## 3. Kommandoradsgenomförande

### 3.1 Linux (Bash)

### 3.2 Windows (PowerShell)


## 4. Git & Versionshantering


## 5. AI-logg och Utvärdering

