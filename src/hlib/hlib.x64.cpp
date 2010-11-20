//hlib.x64.cpp
/*VIOX64
Virtual Bios Hypervisor 4 AMD64 Fam10+ (&ia64) 2 free & happy GPL3 hacking.
Author: jhacks hack hersteller jhackher@gmail.com
This program is released under the GNU GPL license v3 or later version, WHITHOUT ANY WARRANTY.
A copy of the license should be found in jhacks.LICENSE.txt and/or COPYING.txt file.
In any case latest version is in http://www.gnu.org/licenses/gpl.html
*/
#include hlib.x64.hpp
//TODO
//CPU core
class vxlCore;
//CPU chip
class vxlCpu;
//Thread (soft sched.)
class vxlThread;
//Address Space (paged)
class vxlSpace;
//Process (Thread princ. + Address Space)
class vxlProc;
//Task (cpu tss)
class vxlTask;
//VM Guest (mem)
class vxlGuest;
//Elf file
class vxlElf;
//Semaphore
class vxlSem;
//Critical Section
class vxlCSec;
//Mutex
class vxlMutex;

