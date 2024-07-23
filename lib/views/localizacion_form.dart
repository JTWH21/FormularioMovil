import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

class LocalizacionForm extends StatefulWidget {
  @override
  State<LocalizacionForm> createState() => _LocalizacionFormState();
}

class _LocalizacionFormState extends State<LocalizacionForm> {
  String _currentLocation = 'Ubicación desconocida';

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Verifica si el servicio de ubicación está habilitado
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _currentLocation = 'El servicio de ubicación está deshabilitado';
      });
      return;
    }

    // Solicita permisos de ubicación
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _currentLocation = 'Los permisos de ubicación fueron denegados';
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _currentLocation =
            'Los permisos de ubicación fueron denegados permanentemente';
      });
      return;
    }

    // Obtiene la ubicación actual
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentLocation =
          'Latitud: ${position.latitude}, Longitud: ${position.longitude}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Localización'.toUpperCase(), style: GoogleFonts.lato()),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _currentLocation,
          style: GoogleFonts.lato(fontSize: 20),
        ),
      ),
    );
  }
}
