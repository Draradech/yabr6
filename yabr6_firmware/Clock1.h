class Clock1
{
  public:
    Clock1();
    uint32_t value();
    uint32_t base();
    uint8_t counter();
    boolean expired();
    void period(uint32_t usec);
    void rate(uint16_t hz);
    void expireFactor(uint16_t factor);
    void registerCallback(void (*callback)());

  private:
    void init(uint32_t usec);
};
