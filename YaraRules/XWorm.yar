rule XWorm_Hunter {
	meta:
		author = "Potato"
		Description = "Unpacked XWorm"

	strings:
		$Config1 = {
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <URL>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <IP>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <PORT>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <KEY>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <SPL>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <USBNM>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <MUTEX>			
		}
		$Config2 = {
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <Host>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <PORT>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <KEY>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <SPL>
			19 			   //ldc.i4.3
			80 ?? ?? ?? 04 //STSFLD <SLEEP>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <USBNM>
			72 ?? ?? ?? 70 //LDSTR
			80 ?? ?? ?? 04 //STSFLD <MUTEX>

		}

	condition:
		uint16(0) == 0x5A4D and any of them


}