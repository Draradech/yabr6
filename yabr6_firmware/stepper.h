#define STP_ACC_MODE 0
#define STP_SPD_MODE 1

class Stepper
{
   public:
      Stepper(int32_t period, uint8_t pinStep, uint8_t pinDir, bool inverted = false);
      void update();
      void reset();
      void setAcc(int32_t acc);         /* step / s^2 */
      void setMaxSpeed(int32_t spd);    /* step / s */
      void setTargetSpeed(int32_t spd); /* step / s */
      int32_t getSpeed();
      int32_t getPos();

   private:
      int32_t _pos;
      int32_t _stp;
      int32_t _stpRes;
      int32_t _spd;
      int32_t _spdMax;
      int32_t _spdTrgt;
      int32_t _spdRes;
      int32_t _acc;
      uint8_t _mode;

      uint8_t _pinStep;
      uint8_t _pinDir;
      bool _inverted;
};
