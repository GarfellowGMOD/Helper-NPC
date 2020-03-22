include("datasetup.lua")

//=========================ADJUSTING=========================//
model_NPC_menu = "models/player/Group01/male_03.mdl"
model_NPC_outside = "models/humans/Group01/male_03.mdl"

help_Message = "Hello! How can I help you?"
exampleBigText5000 = "QCca26gbn39KO66BmgEu38Nagy0CoHRAUuIleSNV2nzYfVhZtKmC83SzCq2Oztol1y3cmCPAUQeM2fiqMwBb7ueMPZa1JfOKZvBigjt3bsrQmpmAmyVQI57iswYLOgue5hokvXXFJHfvrMfveOZNrGM759vqEqwrJYOr3przljZadJS1oi5Ue0bScGNjyGVme5DZkumsxdVHoAodC4DGJQz87fhnrCdFHG3EGl1WftlDbcMvvOuaqlslPOVsPHVKuXycFdRDDnkJ2ZcdprHQb49bQuQJ65FtdE7eaN7ZGUHWPVoX4tGTkCMNOGVEqeM0pnYV1Cahy20J111RRiL4ylQ5zfBZuRI0hgNQeHSfVKtavqiPG1s6bR7p347w8KVFPa3UhyjPu4fqP6GJef7W1lZzWaev1adGyHfk7qvG0yRIQvp4VE2d2MwT71MOw1zahIP0EQHS5BnZtSoXxAuPRqfmSUmMfBVSDLW19eNoi9UqJijJfzDvuERf6mKbmLDtimAtZ7stnu1kPTcmyv0OYHM3j7trtQ3ROeLUSJ4DH1nXo0h2HXgclKjlrC7l6rHWeb31tM4ANIi4Lffhb5Lj8pbZ6hHuHwg0LcN0P4eAwkzv97NbkNFPsHwNONdEj9ePNeynxoMBDJGKg6iFjnj77ZYUVyiwZhPssJI8CVmKZMVdbBdsuYWW5eigh9PQhbimVoKTdMzO4uSvSOpkAi0pyGihAcaTobGf7XzOqyd5rRVDylVSju3wmq9tJHGjYRfas3B78ZPzgreyPNnPyE6gxLhsmty2gpRg56i1me5WGz40k04C2JADCImCETVKOyYSjiXKpfpqhT5PzErOyXbQDG486qt20Rys1EFSEpgPWix1lDs7uL04PvawVypZjtAZWrQEebgok3G0unwYh17b86pgXhd3PsYtW7orazy79NWNEoVlvKimtl1hE9JXP9I5w8ziFeqMFmqjYQp1KBqH1YjQEQWwjwegA2l68iOreCtt7bHE9b9Usa6fOxS6u6crbxRk61JGVUONyPRt45S9q4nqRRPM4eJoQS97aQEh3FhEwE3NoFXfDBuW5JmUMFEwqv07P8lp3mp55D7N1fVRFV6bgSJK9RIJSR1FjXhIC6koKKFL8uB3UJdsJrg3ClYEXty2Y8pSgCYdGQ47HNq8a3bjYpk8iY4hqQW72wAHBgCk9WabmlBy7kWfyRTgkUtOiIjB0rg84CeS5bIMT1kXhZOhWxlL2Uh9Ary1SrticFnwwRPMV14MR3X3OHt2j4ulxevEyViZADUHeA8IsJFV9mlUF6kyLBEw1OoY289ui0QRdbpUyqvmjOforG9Ug7rzYePNbO6Ee8LsI266L282FNMeLu4LErz3MFzbDy2pfsYeKoSH9hrcAc5vNHx2iP3lSgVnPzhPOF55Sti0Q29C24spDjp6alea2EwQg2bxOSmdH02xvSEd1WnmKp4tBRRCjYv44tYiByAdfYNOl5CjREsl1i5ekGQEvmNg7lqZEQtDAGhpvtcgUWAJy5UlXTfOGmcPB5rMEyI3Qrjzyen706aabwsBmBPlw513ZtnVPrXJeVYeE5u8s8pXNP0iNQwqjSVt0vP9l6kYJeicokQYMqaHokBSy9vM8h0szNNv5zvcq58RezURRghhkroiGNbButc1sFICBPjlCpQb2QSXJh9f5sM5JJ8fZo1eZUGvXuclNeLiZ2zE4UVIX656HriX8HF0NaBbXSmzDoP6lgWqESTVD90e8ns7tG5vitoulLLKSZMeLQ4D5xqEqPKwbaP5cNqYNC9V525NI6UJqf1bT5fY7PfdEU1EYcvVmzhnGedKZg6TWhsn6fkLbUucwSymf1dAyaDgNKdYhxBIEXSzZk28KZIVHD3RpNN7lIRlUzZ47s6cim9yNGygfGLnnqXUODOPJ6e9ebEnJKQ5YgRCoANc1r69Mwj2dq0lOTE1JOueKI6geNSbRaX3DV9nxYVQswHgICBv5X7yNgi1E3bCYnNYyOtIC3OwvmJCqAYVnQEiLmLd3lZuJ5NmEpNynGw1oamFQTaUQ2ybdvO5Kzcxd9SXyjOzT94v1NJ0iyHS7SaHrqYAomFD5UbRbxhryldGPgmuJv6MQZCXJNqsoyHVacY10cDurryxlFvSMyH5VGiAKKLJZ9zGBnd1UsuTb8UfAhqQUle0WmGdDe4wp35FvN3fNm47TZaKNaQ4gcDt7qNbW0Ku3ssJcjdKSgSZnr3D0ZwGTNQGz2YJLqRZBmBxi6JaOPFFY1ugJTHxJRlO0w92TDplrGSabdSYGLXSdayd6p0hUsanbQxcLGi369v6gUslYvOcaVLtx0hbJchvFgKWlIAGxeTGPG2tzLp6GDS679nHk4rD26N6TD383Vcy4zAsxYQcLjyA6KMo8UI3cvMqXYydNFskZ676LzFm6om69tAjcmUr1sAzMnb05ua9gxsFCvOq9Pwz9iFOPll1kHLiFXAqG9XuEM6FHTKyU4dWl9EZXyGK2kuF06ogrh6bJ4IJt7Bl8561aMP2sEPioStzb8msIjecHaGKH7UpALF1DXNB8QjqYmF9G6a3cRXEWChOeFYzKM1E46PuqQ3S8yZOEiPlO8SddBxuSVPLQjcVJp1Q69ITi4GpG334wz2C2ImHCkKPi8YJwymR0jwfmk4YzoekJTPkV5F0PIpaLHWCY0RZTvp9PSnpc5D9ixmLPednrxarsvXqmN9Fjt2V1F6SDbOkaRBxp3r9yl8OPO9Sf0jec4QYz2wsA566FO2DLIrhzP61wL2TJuAeqARifNvuNmkWyzV8fU5sIlqqgT6mSQpwHEbGZMPNHvOm691AYDvJSe2niBcthYa8JGsdl3TwbIo2nrxwEfmXgX9qA77TslT2cVc13Xn2BrkNlMtZOtJwxfTKeqbu2icCUdVWJEST3XFV8lrlj7j7lfQEeLZeBIZPnEPD8AgNHAqsPlT1bqBh6cZo5Wd2t8u7QNC2IIxrEnNPuw9Qg48wet3YWP4rcVDR3NiG7HPKaGqASd93WIKjrbqNcKJVuzW3YIRaVGkogpgoFo2uAPPa5WMnQozdm6zbXAE7XhWWNTsGBo324pBgvLGQIhWa6ouekk0DPxYfa0YKAhV2f132IC4FpcFYlr0DXTHdEM6dxzhFic6cayxirCnChQfihf2d3Xy8etxHx7FmU09lk8KTurNJ6qZ4XbWZoT6ajwBoAJmlKIOPkRse2B3uM27ZH3uv4eIp7dqKbO6b6MI51ujW27DVmEBZCKwIxEr4H7NJp7ciWY4SXJlYKo8awbCKkMLf6JWpynj9idzQk3KN5akqLyoRcaLaTUFrxNkUG5EKPUHnyWabHCOdgdHqZ8fTgP8CcUj2nLJUOJIPYfBdSZP3EHG5yE8AoM8slOmmXQ9BiLz5wzPHJbFZ9sJmonxRXaCOCd3hMbpShyNXotXbel7YvbRTQ26Y6jTOEkOQr6wGpNj03x2gedVDznSeAZ3FzPUCjzykCkUmwFFuP2TLrYkpm4YN9MyFZM57OEgTCLdoxAbQinLDdPZ5lfOuyemLh3u7ZTeLJ5qNxaFvA96Il4IkqXUUnvQrRrB8aQMyd9cHAwGZ4xH65JdN60ZoEUjt7YygXkPwp7Or30cVX3VTSW5iwKeTUHKSSA8nHaKPi1BlZNWvo90We3mHz1xF7yIavbCSPuCQjOjUypwDxhmbejt6Mn5Hdvw04MV8Z2HqlQnPjyJeD45EiLx1SzDCRNREQACP9YXyQht0qBOt9L1XyC0uwZ1raz8xUmTIregEpqS81gYjWJ2EDIFwX4tCS7JNauPN9ZkbG7bUXXr8SDXijbAaNnXw2showW370WcZtpqluSd5jdpM8EeceEuGcBdBIyEIzEdaTaaZ5DolBxz9utL4ovwjhrfYWTwroh9EPePIn32HAyDdL7RDuli3322YshavY5G2fd8l28XG3MASrxJsHQiGxj3mLuldXS9iC55tyGwf6U4FFPJmxoCUI4NOH3hqFaKDTPrsHJZUWm9UAxIgv3XbHeKrIHnRuTDj4uxf9qdmNeqgmLz6XgGOr4myI6QJU83eJn8UmvXemjF0fbFuh6lrdqLNre0aIMXH48anL5WZZs5uf0PXW8i7nZyFp92oGMLfyeXbk1Wcp8znGIwTv17zrgcyTEax9cd47dlkR5YbPdI0sC7DTkYNV1FUwYv4D89KJ1AJL07tM5IFdcoZqYT7WF1QnP3K47syJr5v4oJC0fFPpAQ9BuhjARBpUjZcAsmVoluiPGc3H7mBgwt6YQfiOArfsD8HPmO3ThFeZ6zTCHD22nU4SVS60u1WfYtS2WlvO4ye5UzuzfEq03gu3H6Re27eNP2nc9bYfvkJqsUVH42gJtYngZ7HapKgoR8VS4JyWujZXmTc0P7OLg56O6f03ymiQ6AS1xMmGg6iJgfAAruKXzf7VU1DtbgtwuerZyL6phD4kLJMxUO5Y9AvA2lT189bUeGqEvcj1380245EqNN8lRRPawKSfrGM0HuS2Dayx6ARdXCBbmkFfipVf4FvA3NXZkJ1aIZEVzLoxqwt4kXrk9NTGA0sWqSPK3O6s1BLLByJIBUOxpIFwfenJleEBHUyjZkdZQIaMG5lnrGWdTRstMyGFsB3xgOFRxmVIsarjuU6HalbElLmmNn18Bz31Kl20dfDDLzdJy3sS6ujxmaoLk9vl6hH4GGhxDh52v58dvPzIgFyni2eyEshb3volrfJKgvsvmx0Dmf6F2WUayTSXygR0v3AAzhPGGjULXFc9je2VKY20t3HqPPvXIrGHU9k2OiI6Qy9DkSPPpyT4rTCcaLS5QQ8OsOh1PcgtR3NqOeMCq7gRimwHAJKspaOxgD8p0QNmWpPqiHabHUqmiDMjWTyiywBwQ6dVzuZWnVFCKKJxJ0bCFB8NPV9auE7sdMKyNduHRqNYx9DAUTizvjmdzTHxpUjjPldvwjnSINbmy7w5CEvVo6cCJ7DhlZXy8jjoaSIHK6i"
exampleBigText1000 = "toqwN09vw3unl2PixYIGtxlaHIYK98XoWfQG1iOCZ3FNfjRn6Xq8uZoyl3AiZoJMi7NgTc8jTpluCe68faVj7J6PEvAe2XkaX7nlgDzyuuEcyUbgxs3xC29AMVnLJuNc3zT2bUK8ONj4MtofOjyrCaJ20LO2AR6djie5WQhnQxVYUnm8BGp3TRf9h8GIl5fFLIFz9im3HzRcwLVfFf8gtZc09xhkqF2EXxb5YOmoKuPsSAvEbhuNGfrzAF21EojpiVKK99oaaoXN6c9mh01Ug3VnrBNhH20zhb2IaBLHJkXYPkDuffltVexcsAD9OaaGas1hDyPjK5nBZ76bxJjvn2RXbp2xLcF2Le4bulDdaLxX6oGpN1M4X8PL2d2ryoWD0PkH7AFhEl9pifHKtUNKOoVAqMIlsdLEjcnEgPz1PscqielkiPRHXtDJmutPD8QINsxQxsnRbQloDy2RRb6a0V3jdXYpHdrtreX1xxpif2FIhN7EeBi4C5QAQp7uFAy9DV31E90Iyphd8VMLjQcZZBi9foBvV9IcxaMJ3IVDZZxC3EsGxjUTL3oysZVopwosc8Z7trzRVd8yDMAWyMZMgjWe3qVjkFVZBhLvr0lluRxQ9Pf4flYIPLfQBPc55Uwpum4WwI1psWke7ozCiVzs7ofd0vOO5GuA104lFdHW9iR6QX6lB09Icjb3z7p6tb9ZRy8iWo4pTyu65dYARKala2AygTInrM1WLeP0lVpJe3YLtqsFHBlsQJubRiXgkJudqKXDAfB9G9niVzkYfdH7tpf8gFaG68PngRLLjgLhEL2FbscI6wWyZbQYaq15JYFJxMjGxkQxqBPBtTCbMO6ZR6U59e1arpQ19aDa62O3e3MsAPbeY9vgJJMV9rsNdYPhns61besBlXzAip8AJUa3P6LmfOcOIFcOlB9W88QsisYdGVWSHhNh4BJpJsMQEmuvuLsiq3VQmGrbyUobLBtVwt3hhvv4UQTKComKPpmJ"

//=========================COLORS=========================//
--Help Sign--
help_outside_border = Color(153, 102, 255)
help_outside_background = Color(0, 102, 255, 100)

--GUI Background--
gui_outside_border = Color(126, 164, 224)
gui_mainbackground = Color(163, 188, 230)
gui_close_button = Color(153, 102, 255)

--Categories--
gui_category_color = Color(153, 102, 255, 200)

--Question Box--
gui_question_color = Color(153, 102, 255, 100)

--Response Box--
gui_response_color = Color(255, 102, 255, 50)

--Scroll Bars --
gui_scroll_updown = Color(153, 102, 255)
gui_scroll_grabber = Color(153, 102, 255, 200)
gui_scroll_background = Color(163, 188, 230)



//=========================ADD CATEGORIES=========================//
//EXAMPLE:
/*
addCategory("REFERENCE NAME HERE", {
	["text"] = "CATEGORY DISPLAY NAME",
	["questions"] = { 
		["QUESTION 1 HERE"] = "RESPONSE 1 HERE",
		["QUESTION 2 HERE"] = "RESPONSE 2 HERE",
		["QUESTION 3 HERE"] = "RESPONSE 3 HERE",
		["QUESTION 4 HERE"] = "RESPONSE 4 HERE",
	}
})
*/

//!!!!!!!!IMPORTANT: DON'T FORGET COMMAS!!!!!!!!\\
addCategory("server_Info", {
	["text"] = "Server Info",
	["questions"] = { 
		["What Server is this?"] = exampleBigText1000,
		["What's the server's website?"] = "serenitynetwork.net",
	}
})

addCategory("weed_Growing", {
	["text"] = "Weed Growing Guide",
	["questions"] = { 
		["How Do I Grow Weed?"] = "All you have to do is just grow it. It's really not that hard. Stupid"
	}
})
	
addCategory("meth_Cooking", { 
	["text"] = "Meth Cooking Guide",
	["questions"] = { 
		["How Do I Make Meth?"] = "All you have to do is just make it. It's really not that hard. Stupid"
	}
})

addCategory("using_Printers", { 
	["text"] = "Using Money Printers",
	["questions"] = { 
		["How Do I Use Money Printers?"] = "All you have to do is just use it. It's really not that hard. Stupid"
	}
})
